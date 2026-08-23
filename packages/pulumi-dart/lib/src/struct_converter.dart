import 'constants.dart';
import 'asset_archive.dart';
import 'input.dart';
import 'output.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'resource/resource.dart';

/// {@template pulumi.struct_converter.summary}
/// Converts between Dart values and protobuf `Struct`/`Value`.
///
/// This converter is used in monitor/engine/callback RPC request-response
/// paths and preserves Pulumi secret/resource reference conventions.
/// {@endtemplate}
///
class StructConverter {
  /// Converts a map into protobuf [Struct].
  static Future<Struct> toStruct(
    Map<String, dynamic> input, {
    bool collapseUnknownCollections = true,
  }) async {
    final struct = Struct();
    for (final entry in input.entries) {
      struct.fields[entry.key] = await toValue(
        entry.value,
        collapseUnknownCollections: collapseUnknownCollections,
      );
    }
    return struct;
  }

  /// Converts a Dart value into protobuf [Value].
  static Future<Value> toValue(
    dynamic value, {
    bool collapseUnknownCollections = true,
  }) async {
    final result = Value();

    if (value == null) {
      result.nullValue = NullValue.NULL_VALUE;
      return result;
    }

    if (value is Output) {
      final data = await value.getData();
      if (!data.isKnown) {
        result.stringValue = _unknownSentinelForOutput(value);
        return result;
      }

      final inner = await toValue(
        data.value,
        collapseUnknownCollections: collapseUnknownCollections,
      );
      if (!data.isSecret) {
        return inner;
      }

      final secret = Struct()
        ..fields[Constants.specialSigKey] = (Value()
          ..stringValue = Constants.specialSecretSig)
        ..fields[Constants.valueName] = inner;
      result.structValue = secret;
      return result;
    }

    if (value is Input) {
      return toValue(
        value.toOutput(),
        collapseUnknownCollections: collapseUnknownCollections,
      );
    }

    if (value is Resource) {
      final urn = await value.urn.getValue();
      final resourceRef = Struct()
        ..fields[Constants.specialSigKey] = (Value()
          ..stringValue = Constants.specialResourceSig)
        ..fields[Constants.resourceUrnName] = (Value()..stringValue = urn);

      // Custom resources also carry IDs; include them when available.
      try {
        final id = await (value as dynamic).id.getValue();
        if (id is String && id.isNotEmpty) {
          resourceRef.fields[Constants.resourceIdName] = Value()
            ..stringValue = id;
        }
      } catch (_) {
        // Non-custom resources do not have IDs.
      }

      result.structValue = resourceRef;
      return result;
    }

    if (value is AssetOrArchive) {
      final encoded = Struct()
        ..fields[Constants.specialSigKey] = Value()
        ..fields[Constants.specialSigKey]!.stringValue = value is Asset
            ? Constants.specialAssetSig
            : Constants.specialArchiveSig;

      switch (value) {
        case FileAsset(:final path) || FileArchive(:final path):
          encoded.fields[Constants.assetOrArchivePathName] = Value()
            ..stringValue = path;
        case StringAsset(:final content):
          encoded.fields[Constants.assetTextName] = Value()
            ..stringValue = content;
        case Base64Asset(:final content):
          encoded.fields[Constants.assetTextName] = Value()
            ..stringValue = content;
        case RemoteAsset(:final url) || RemoteArchive(:final url):
          encoded.fields[Constants.assetOrArchiveUriName] = Value()
            ..stringValue = url;
        case AssetArchive(:final assets):
          encoded.fields[Constants.archiveAssetsName] = await toValue(
            assets,
            collapseUnknownCollections: collapseUnknownCollections,
          );
      }

      result.structValue = encoded;
      return result;
    }

    if (value is bool) {
      result.boolValue = value;
      return result;
    }

    if (value is int) {
      result.numberValue = value.toDouble();
      return result;
    }

    if (value is double) {
      result.numberValue = value;
      return result;
    }

    if (value is String) {
      result.stringValue = value;
      return result;
    }

    if (value is Iterable) {
      final list = ListValue();
      var hasUnknownDescendant = false;
      for (final item in value) {
        final serialized = await toValue(
          item,
          collapseUnknownCollections: collapseUnknownCollections,
        );
        if (_containsUnknowns(serialized)) {
          hasUnknownDescendant = true;
        }
        list.values.add(serialized);
      }
      if (collapseUnknownCollections && hasUnknownDescendant) {
        result.stringValue = Constants.unknownArrayValue;
        return result;
      }
      result.listValue = list;
      return result;
    }

    if (value is Map) {
      final struct = Struct();
      var hasUnknownDescendant = false;
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final serialized = await toValue(
          entry.value,
          collapseUnknownCollections: collapseUnknownCollections,
        );
        if (_containsUnknowns(serialized)) {
          hasUnknownDescendant = true;
        }
        struct.fields[key] = serialized;
      }
      if (collapseUnknownCollections && hasUnknownDescendant) {
        result.stringValue = Constants.unknownObjectValue;
        return result;
      }
      result.structValue = struct;
      return result;
    }

    // Fallback: provider protobuf structs can always carry strings.
    result.stringValue = value.toString();
    return result;
  }

  /// Converts protobuf [Struct] to a Dart map.
  static Map<String, dynamic> fromStruct(Struct value) {
    return value.fields.map((key, v) => MapEntry(key, fromValue(v)));
  }

  /// Converts protobuf [Value] to a Dart value.
  static dynamic fromValue(Value value) {
    switch (value.whichKind()) {
      case Value_Kind.nullValue:
        return null;
      case Value_Kind.boolValue:
        return value.boolValue;
      case Value_Kind.numberValue:
        return value.numberValue;
      case Value_Kind.stringValue:
        return value.stringValue;
      case Value_Kind.listValue:
        return value.listValue.values.map(fromValue).toList();
      case Value_Kind.structValue:
        final map = fromStruct(value.structValue);
        if (map[Constants.specialSigKey] == Constants.specialSecretSig) {
          return map[Constants.valueName];
        }
        return map;
      case Value_Kind.notSet:
        return null;
    }
  }

  static String _unknownSentinelForOutput(Output output) {
    if (output is Output<bool>) {
      return Constants.unknownBoolValue;
    }
    if (output is Output<int> ||
        output is Output<double> ||
        output is Output<num>) {
      return Constants.unknownNumberValue;
    }
    if (output is Output<List> || output is Output<Iterable>) {
      return Constants.unknownArrayValue;
    }
    if (output is Output<Map>) {
      return Constants.unknownObjectValue;
    }
    return Constants.unknownValue;
  }

  static bool _containsUnknowns(Value value) {
    if (value.whichKind() == Value_Kind.stringValue) {
      return Constants.isUnknownSentinel(value.stringValue);
    }

    if (value.whichKind() == Value_Kind.listValue) {
      for (final element in value.listValue.values) {
        if (_containsUnknowns(element)) {
          return true;
        }
      }
      return false;
    }

    if (value.whichKind() == Value_Kind.structValue) {
      for (final entry in value.structValue.fields.entries) {
        if (entry.key == Constants.specialSigKey) {
          continue;
        }
        if (_containsUnknowns(entry.value)) {
          return true;
        }
      }
      return false;
    }

    return false;
  }
}
