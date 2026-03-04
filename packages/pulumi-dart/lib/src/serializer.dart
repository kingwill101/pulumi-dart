import 'package:pulumi/src/asset_archive.dart';
import 'package:pulumi/src/resource/component_resource.dart';
import 'package:pulumi/src/resource/resource.dart';

import 'constants.dart';
import 'input.dart';
import 'output.dart';
import 'resource/custom_resource.dart';

/// {@template pulumi.serializer.summary}
/// Serializes Dart inputs/resources to Pulumi RPC-compatible values.
///
/// This encoder preserves Pulumi wire-format semantics:
/// - unknown sentinels for preview-time unknowns
/// - secret wrappers
/// - resource references (URN/ID)
/// - output-value envelopes when requested
/// {@endtemplate}
///
class Serializer {
  static final Expando<Set<Resource>> _directDependencies =
      Expando<Set<Resource>>('_direct_computed_dependencies');

  final Set<Resource> dependentResources = {};
  final bool _excessiveDebugOutput;
  final bool _collapseUnknownCollections;

  Serializer({
    bool excessiveDebugOutput = false,
    bool collapseUnknownCollections = true,
  }) : _excessiveDebugOutput = excessiveDebugOutput,
       _collapseUnknownCollections = collapseUnknownCollections;

  /// Serializes [prop] in context [ctx].
  ///
  /// When [keepResources] is `true`, resources are encoded as structured
  /// references. When [keepOutputValues] is `true`, output envelopes are kept.
  Future<dynamic> serializeAsync(
    String ctx,
    dynamic prop,
    bool keepResources, {
    bool keepOutputValues = false,
  }) async {
    return _serializeAsync(
      ctx,
      prop,
      keepResources,
      keepOutputValues,
      <Object>{},
    );
  }

  Future<dynamic> _serializeAsync(
    String ctx,
    dynamic prop,
    bool keepResources,
    bool keepOutputValues,
    Set<Object> seen,
  ) async {
    final seenSet = seen;

    if (prop == null ||
        prop is bool ||
        prop is int ||
        prop is double ||
        prop is String) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: primitive=$prop');
      }
      return prop;
    }

    if (prop is Inputs) {
      return serializeResourceArgs(
        ctx,
        prop,
        keepResources,
        keepOutputValues,
        seenSet,
      );
    }

    if (prop is AssetOrArchive) {
      return serializeAssetOrArchive(ctx, prop, keepResources, seenSet);
    }

    if (prop is Future) {
      throw Exception(
        'Futures are not allowed inside ResourceArgs. Please wrap your Future in an Output:\n\t$ctx',
      );
    }

    if (prop is Output) {
      if (!seenSet.add(prop)) {
        throw StateError(
          'Detected recursive Output/Input graph while serializing value at $ctx.',
        );
      }
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Recursing into Output');
      }
      try {
        final data = await prop.getData();
        dependentResources.addAll(data.resources);
        var propResources = Set<Resource>.from(data.resources);

        final isKnown = data.isKnown;
        final isSecret = data.isSecret;

        final valueSerializer = Serializer(
          excessiveDebugOutput: _excessiveDebugOutput,
          collapseUnknownCollections: _collapseUnknownCollections,
        );
        final value = isKnown
            ? await valueSerializer._serializeAsync(
                '$ctx.value',
                data.value,
                keepResources,
                false,
                seenSet,
              )
            : null;

        final promiseDeps = valueSerializer.dependentResources;
        dependentResources.addAll(promiseDeps);
        propResources.addAll(promiseDeps);

        if (keepOutputValues) {
          if (isKnown && !isSecret && propResources.isEmpty) {
            return value;
          }

          final urnDeps = <Resource>{};
          for (final resource in propResources) {
            final urnSerializer = Serializer(
              excessiveDebugOutput: _excessiveDebugOutput,
              collapseUnknownCollections: _collapseUnknownCollections,
            );
            await urnSerializer._serializeAsync(
              '$ctx dependency',
              resource.urn,
              keepResources,
              false,
              seenSet,
            );
            urnDeps.addAll(urnSerializer.dependentResources);
          }
          dependentResources.addAll(urnDeps);
          propResources.addAll(urnDeps);

          final dependencies = await getAllTransitivelyReferencedResourceUrns(
            propResources,
          );
          final result = {
            Constants.specialSigKey: Constants.specialOutputValueSig,
            if (isKnown) Constants.valueName: value,
            if (isSecret) Constants.secretName: isSecret,
            if (dependencies.isNotEmpty)
              Constants.dependenciesName: dependencies.toList()..sort(),
          };
          return result;
        }

        if (!isKnown) return _unknownSentinelForOutput(prop);

        if (isSecret) {
          return {
            Constants.specialSigKey: Constants.specialSecretSig,
            Constants.valueName: value,
          };
        }

        return value;
      } finally {
        seenSet.remove(prop);
      }
    }

    if (prop is Input) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Recursing into Input');
      }
      return _serializeAsync(
        ctx,
        prop.toOutput(),
        keepResources,
        keepOutputValues,
        seenSet,
      );
    }

    if (prop is CustomResource) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Encountered Resource');
      }

      dependentResources.add(prop);

      var id = await _serializeAsync(
        '$ctx.id',
        prop.id,
        keepResources,
        false,
        seenSet,
      );
      if (keepResources) {
        var urn = await _serializeAsync(
          '$ctx.urn',
          prop.urn,
          keepResources,
          false,
          seenSet,
        );
        return {
          Constants.specialSigKey: Constants.specialResourceSig,
          Constants.resourceUrnName: urn,
          Constants.resourceIdName:
              id is String && Constants.isUnknownSentinel(id) ? '' : id,
        };
      }
      return id;
    }

    if (prop is ComponentResource) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Encountered Resource');
      }

      dependentResources.add(prop);

      var urn = await _serializeAsync(
        '$ctx.urn',
        prop.urn,
        keepResources,
        false,
        seenSet,
      );
      if (keepResources) {
        return {
          Constants.specialSigKey: Constants.specialResourceSig,
          Constants.resourceUrnName: urn,
        };
      }
      return urn;
    }

    if (prop is Map) {
      final serialized = await serializeMap(
        ctx,
        prop.cast(),
        keepResources,
        keepOutputValues,
        seenSet,
      );
      if (_collapseUnknownCollections &&
          !keepOutputValues &&
          _containsUnknowns(serialized)) {
        return Constants.unknownObjectValue;
      }
      return serialized;
    }

    if (prop is Iterable) {
      final serialized = await serializeList(
        ctx,
        prop,
        keepResources,
        keepOutputValues,
        seenSet,
      );
      if (_collapseUnknownCollections &&
          !keepOutputValues &&
          _containsUnknowns(serialized)) {
        return Constants.unknownArrayValue;
      }
      return serialized;
    }

    throw Exception(
      '${prop.runtimeType} is not a supported argument type.\n\t$ctx',
    );
  }

  /// Serializes a resource argument map.
  Future<Map<String, dynamic>> serializeResourceArgs(
    String ctx,
    Inputs args,
    bool keepResources,
    bool keepOutputValues,
    Set<Object> seen,
  ) async {
    if (_excessiveDebugOutput) {
      print('Serialize property[$ctx]: Recursing into ResourceArgs');
    }

    return serializeMap(ctx, args, keepResources, keepOutputValues, seen);
  }

  /// Serializes an [AssetOrArchive] into Pulumi signature maps.
  Future<Map<String, dynamic>> serializeAssetOrArchive(
    String ctx,
    AssetOrArchive assetOrArchive,
    bool keepResources,
    Set<Object> seen,
  ) async {
    if (_excessiveDebugOutput) {
      print(
        'Serialize property[$ctx]: asset/archive=${assetOrArchive.runtimeType}',
      );
    }

    String propName;
    String sigKey;
    dynamic value;

    if (assetOrArchive is FileAsset) {
      propName = Constants.assetOrArchivePathName;
      sigKey = Constants.specialAssetSig;
      value = assetOrArchive.path;
    } else if (assetOrArchive is StringAsset) {
      propName = Constants.assetTextName;
      sigKey = Constants.specialAssetSig;
      value = assetOrArchive.content;
    } else if (assetOrArchive is RemoteAsset) {
      propName = Constants.assetOrArchiveUriName;
      sigKey = Constants.specialAssetSig;
      value = assetOrArchive.url;
    } else if (assetOrArchive is FileArchive) {
      propName = Constants.assetOrArchivePathName;
      sigKey = Constants.specialArchiveSig;
      value = assetOrArchive.path;
    } else if (assetOrArchive is AssetArchive) {
      propName = Constants.archiveAssetsName;
      sigKey = Constants.specialArchiveSig;
      value = await serializeMap(
        ctx,
        assetOrArchive.assets,
        keepResources,
        false,
        seen,
      );
    } else if (assetOrArchive is RemoteArchive) {
      propName = Constants.assetOrArchiveUriName;
      sigKey = Constants.specialArchiveSig;
      value = assetOrArchive.url;
    } else {
      throw Exception(
        'Unknown asset or archive type: ${assetOrArchive.runtimeType}',
      );
    }

    var serializedValue = await _serializeAsync(
      "$ctx.$propName",
      value,
      keepResources,
      false,
      seen,
    );

    return {Constants.specialSigKey: sigKey, propName: serializedValue};
  }

  /// Serializes map values recursively.
  Future<Map<String, dynamic>> serializeMap(
    String ctx,
    Map<String, dynamic> map,
    bool keepResources,
    bool keepOutputValues,
    Set<Object> seen,
  ) async {
    if (_excessiveDebugOutput) {
      print('Serialize property[$ctx]: Hit map');
    }

    var result = <String, dynamic>{};
    for (var entry in map.entries) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: object.${entry.key}');
      }

      var v = await _serializeAsync(
        '$ctx.${entry.key}',
        entry.value,
        keepResources,
        keepOutputValues,
        seen,
      );
      if (v != null) {
        result[entry.key] = v;
      }
    }

    return result;
  }

  /// Serializes list values recursively.
  Future<List<dynamic>> serializeList(
    String ctx,
    Iterable iterable,
    bool keepResources,
    bool keepOutputValues,
    Set<Object> seen,
  ) async {
    if (_excessiveDebugOutput) {
      print('Serialize property[$ctx]: Hit list');
    }

    var result = <dynamic>[];
    var index = 0;
    for (var item in iterable) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: array[$index] element');
      }

      result.add(
        await _serializeAsync(
          '$ctx[$index]',
          item,
          keepResources,
          keepOutputValues,
          seen,
        ),
      );
      index++;
    }

    return result;
  }

  static Future<Set<String>> getAllTransitivelyReferencedResourceUrns(
    Set<Resource> resources,
  ) async {
    final urns = <String>{};
    final visited = <Resource>{};

    Future<void> collect(Resource resource) async {
      if (!visited.add(resource)) {
        return;
      }

      // Component resources may represent a graph of child resources.
      // Their transitive children are valid dependency targets and should
      // be included as individual URN dependencies.
      for (final child in resource.childResources) {
        await collect(child);
      }

      final urnData = await resource.urn.getData();
      final urn = urnData.value;
      if (urnData.isKnown && urn is String && urn.isNotEmpty) {
        urns.add(urn);
      }
    }

    for (final resource in resources) {
      await collect(resource);
    }

    return urns;
  }

  /// Remembers that [fromResource] depends on [toResource] unless that would
  /// form a cycle in the known dependency graph.
  static bool declareDependency(Resource fromResource, Resource toResource) {
    if (_reachable(fromResource: toResource, toResource: fromResource)) {
      return false;
    }

    _dependenciesFor(fromResource).add(toResource);
    return true;
  }

  static Set<Resource> _dependenciesFor(Resource resource) {
    final existing = _directDependencies[resource];
    if (existing != null) {
      return existing;
    }
    final created = <Resource>{};
    _directDependencies[resource] = created;
    return created;
  }

  static bool _reachable({
    required Resource fromResource,
    required Resource toResource,
  }) {
    final visited = <Resource>{};
    bool dfs(Resource current) {
      if (!visited.add(current)) {
        return false;
      }
      if (current == toResource) {
        return true;
      }
      for (final dep in _dependenciesFor(current)) {
        if (dfs(dep)) {
          return true;
        }
      }
      return false;
    }

    return dfs(fromResource);
  }

  String _unknownSentinelForOutput(Output output) {
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

  bool _containsUnknowns(dynamic value) {
    if (value is String) {
      return Constants.isUnknownSentinel(value);
    }
    if (value is List) {
      for (final element in value) {
        if (_containsUnknowns(element)) {
          return true;
        }
      }
      return false;
    }
    if (value is Map) {
      for (final entry in value.entries) {
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
