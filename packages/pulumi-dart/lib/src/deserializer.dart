import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import 'resource/dependency_custom_resource.dart';

/// {@template pulumi.deserializer.summary}
/// Deserializes Pulumi RPC values into Dart runtime values.
///
/// Handles Pulumi special signatures for secrets, assets/archives, resource
/// references, output envelopes, and unknown sentinels.
/// {@endtemplate}
///
class Deserializer {
  /// Deserializes a protobuf [Value] into [OutputData].
  static OutputData<T> deserialize<T>(Value value) {
    var (innerVal, isSecret) = _unwrapSecret(value);
    value = innerVal;

    if (value.whichKind() == Value_Kind.stringValue &&
        Constants.isUnknownSentinel(value.stringValue)) {
      return OutputData<T>(
        value: null,
        isKnown: false,
        isSecret: isSecret,
        resources: {},
      );
    }

    if (_tryDeserializeAssetOrArchive(value) case (true, var assetOrArchive?)) {
      return OutputData<T>(
        value: assetOrArchive as T,
        isKnown: true,
        isSecret: isSecret,
        resources: {},
      );
    }

    if (_tryDeserializeResource(value) case (true, var resource?)) {
      return OutputData<T>(
        value: resource as T,
        isKnown: true,
        isSecret: isSecret,
        resources: {},
      );
    }

    if (_tryDeserializeOutputValue(value) case (true, var outputValue?)) {
      return OutputData<T>(
        value: outputValue as T,
        isKnown: true,
        isSecret: false,
        resources: {},
      );
    }

    if (_isSpecialStruct(value) case (true, var sig?)) {
      throw Exception('Unknown special signature when deserializing: $sig');
    }

    var innerData = _deserializeCore<T>(value);
    return OutputData<T>(
      value: innerData.value,
      isKnown: innerData.isKnown,
      isSecret: isSecret || innerData.isSecret,
      resources: innerData.resources,
    );
  }

  static (Value, bool) _unwrapSecret(Value value) {
    var isSecret = false;

    var (isSpecial, sig) = _isSpecialStruct(value);
    if (isSpecial && sig == Constants.specialSecretSig) {
      if (!value.structValue.fields.containsKey(Constants.valueName)) {
        throw Exception('Secrets must have a field called "value"');
      }

      isSecret = true;
      value = value.structValue.fields[Constants.valueName]!;
    }

    return (value, isSecret);
  }

  static (bool, String?) _isSpecialStruct(Value value) {
    if (value.structValue.fields.containsKey(Constants.specialSigKey)) {
      return (
        true,
        value.structValue.fields[Constants.specialSigKey]!.stringValue,
      );
    }
    return (false, null);
  }

  static (bool, AssetOrArchive?) _tryDeserializeAssetOrArchive(Value value) {
    if (_isSpecialStruct(value) case (true, var sig?)) {
      if (sig == Constants.specialAssetSig) {
        return (true, _deserializeAsset(value));
      }
      if (sig == Constants.specialArchiveSig) {
        return (true, _deserializeArchive(value));
      }
    }
    return (false, null);
  }

  static Asset _deserializeAsset(Value value) {
    var fields = value.structValue.fields;
    if (_tryGetStringValue(fields, Constants.assetOrArchivePathName) case (
      true,
      var path?,
    )) {
      return FileAsset(path);
    }
    if (_tryGetStringValue(fields, Constants.assetOrArchiveUriName) case (
      true,
      var uri?,
    )) {
      return RemoteAsset(uri);
    }
    if (_tryGetStringValue(fields, Constants.assetTextName) case (
      true,
      var text?,
    )) {
      return StringAsset(text);
    }
    throw Exception(
      'Value was marked as Asset, but did not conform to required shape.',
    );
  }

  static Archive _deserializeArchive(Value value) {
    var fields = value.structValue.fields;
    if (_tryGetStringValue(fields, Constants.assetOrArchivePathName) case (
      true,
      var path?,
    )) {
      return FileArchive(path);
    }
    if (_tryGetStringValue(fields, Constants.assetOrArchiveUriName) case (
      true,
      var uri?,
    )) {
      return RemoteArchive(uri);
    }
    if (fields.containsKey(Constants.archiveAssetsName)) {
      var assetsValue = fields[Constants.archiveAssetsName]!;
      var assets = <String, AssetOrArchive>{};
      for (var entry in assetsValue.structValue.fields.entries) {
        if (_tryDeserializeAssetOrArchive(entry.value) case (
          true,
          var innerAssetOrArchive?,
        )) {
          assets[entry.key] = innerAssetOrArchive;
        } else {
          throw Exception(
            'AssetArchive contained an element that wasn\'t itself an Asset or Archive.',
          );
        }
      }
      return AssetArchive(assets);
    }
    throw Exception(
      'Value was marked as Archive, but did not conform to required shape.',
    );
  }

  static (bool, Resource?) _tryDeserializeResource(Value value) {
    final (isSpecial, sig) = _isSpecialStruct(value);
    if (!isSpecial || sig != Constants.specialResourceSig) {
      return (false, null);
    }

    final fields = value.structValue.fields;
    final (hasUrn, urn) = _tryGetStringValue(fields, Constants.resourceUrnName);
    if (!hasUrn) {
      throw Exception(
        "Value was marked as a Resource, but did not conform to required shape.",
      );
    }

    final (_, id) = _tryGetStringValue(fields, Constants.resourceIdName);

    final urnParts = urn!.split("::");
    final type = urnParts.length > 2 ? urnParts[2].split(r'$').last : '';
    if (type.startsWith("pulumi:providers:")) {
      final package = type.substring("pulumi:providers:".length);
      final provider = ProviderResource.reference(package, urn, id: id);
      return (true, provider);
    }

    final typed = ResourceReferenceRegistry.construct(type, urn);
    if (typed != null) {
      return (true, typed);
    }

    if (id != null) {
      return (true, DependencyCustomResource(urn, id));
    }
    return (true, DependencyResource(urn));
  }

  static (bool, dynamic) _tryDeserializeOutputValue(Value value) {
    final (isSpecial, sig) = _isSpecialStruct(value);
    if (isSpecial && sig == Constants.specialOutputValueSig) {
      var isKnown = value.structValue.fields.containsKey(Constants.valueName);
      var isSecret =
          value.structValue.fields.containsKey(Constants.secretName) &&
          value.structValue.fields[Constants.secretName]!.boolValue;

      var dependencies = <Resource>{};
      if (value.structValue.fields.containsKey(Constants.dependenciesName)) {
        var deps = value.structValue.fields[Constants.dependenciesName]!;
        for (var dep in deps.listValue.values) {
          dependencies.add(DependencyResource(dep.stringValue));
        }
      }

      var resultValue = isKnown
          ? deserialize(value.structValue.fields[Constants.valueName]!).value
          : null;
      return (
        true,
        _createFlattenedOutput(dependencies, resultValue, isKnown, isSecret),
      );
    }
    return (false, null);
  }

  static OutputData<T> _deserializeCore<T>(Value value) {
    switch (value.whichKind()) {
      case Value_Kind.numberValue:
        return OutputData<T>(
          value: value.numberValue as T,
          isKnown: true,
          isSecret: false,
          resources: {},
        );
      case Value_Kind.stringValue:
        return OutputData<T>(
          value: value.stringValue as T,
          isKnown: true,
          isSecret: false,
          resources: {},
        );
      case Value_Kind.boolValue:
        return OutputData<T>(
          value: value.boolValue as T,
          isKnown: true,
          isSecret: false,
          resources: {},
        );
      case Value_Kind.structValue:
        return _deserializeStruct<T>(value.structValue);
      case Value_Kind.listValue:
        return _deserializeList<T>(value.listValue);
      case Value_Kind.nullValue:
        return OutputData<T>(
          value: null,
          isKnown: true,
          isSecret: false,
          resources: {},
        );
      default:
        throw Exception(
          'Unknown type when deserializing protobuf: ${value.whichKind()}',
        );
    }
  }

  static OutputData<T> _deserializeStruct<T>(Struct struct) {
    var resources = <Resource>{};
    var result = <String, dynamic>{};
    var isKnown = true;
    var isSecret = false;

    for (var entry in struct.fields.entries) {
      var elementData = deserialize(entry.value);
      (isKnown, isSecret) = OutputData.combine(elementData, isKnown, isSecret);
      result[entry.key] = elementData.value;
      resources.addAll(elementData.resources);
    }

    return OutputData<T>(
      value: result as T,
      isKnown: isKnown,
      isSecret: isSecret,
      resources: resources,
    );
  }

  static OutputData<T> _deserializeList<T>(ListValue listValue) {
    var resources = <Resource>{};
    var result = <dynamic>[];
    var isKnown = true;
    var isSecret = false;

    for (var element in listValue.values) {
      var elementData = deserialize(element);
      (isKnown, isSecret) = OutputData.combine(elementData, isKnown, isSecret);
      resources.addAll(elementData.resources);
      result.add(elementData.value);
    }

    return OutputData<T>(
      value: result as T,
      isKnown: isKnown,
      isSecret: isSecret,
      resources: resources,
    );
  }

  static (bool, String?) _tryGetStringValue(
    Map<String, Value> fields,
    String keyName,
  ) {
    if (fields.containsKey(keyName)) {
      return (true, fields[keyName]!.stringValue);
    }
    return (false, null);
  }

  static Output<T> _createOutput<T>(
    Set<Resource> resources,
    T? value,
    bool isKnown,
    bool isSecret,
  ) {
    return Output<T>(
      Future.value(
        OutputData<T>(
          value: value,
          isKnown: isKnown,
          isSecret: isSecret,
          resources: resources,
        ),
      ),
    );
  }

  static Output<dynamic> _createFlattenedOutput(
    Set<Resource> resources,
    dynamic value,
    bool isKnown,
    bool isSecret,
  ) {
    if (value is! Output) {
      return _createOutput<dynamic>(resources, value, isKnown, isSecret);
    }

    return Output<dynamic>(
      value.getData().then((inner) {
        final combinedResources = {...resources, ...inner.resources};
        final combinedSecret = isSecret || inner.isSecret;

        if (!isKnown || !inner.isKnown) {
          return OutputData<dynamic>(
            value: null,
            isKnown: false,
            isSecret: combinedSecret,
            resources: combinedResources,
          );
        }

        return OutputData<dynamic>(
          value: inner.value,
          isKnown: true,
          isSecret: combinedSecret,
          resources: combinedResources,
        );
      }),
    );
  }
}
