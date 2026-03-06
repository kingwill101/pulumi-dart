// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_maps_map.dart';

/// Result data returned by getConfigMaps.
class GetConfigMapsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetConfigMapsMap> maps;
  final String? nameRegex;
  final List<String> names;
  final String namespaceId;
  final String? outputFile;

  /// Creates a new [GetConfigMapsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [maps] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [namespaceId] Required.
  /// [outputFile] Optional.
  const GetConfigMapsResult({
    required this.id,
    required this.ids,
    required this.maps,
    this.nameRegex,
    required this.names,
    required this.namespaceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'maps': pulumi.Input.encodeList<GetConfigMapsMap, Map<String, dynamic>>(maps, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'namespaceId': namespaceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetConfigMapsResult.fromMap(Map<String, dynamic> map) {
    return GetConfigMapsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      maps: pulumi.Input.decodeList<GetConfigMapsMap>(map['maps']!, (value) => GetConfigMapsMap.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      namespaceId: map['namespaceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

