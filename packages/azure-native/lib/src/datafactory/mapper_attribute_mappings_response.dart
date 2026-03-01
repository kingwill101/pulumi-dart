// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_mapping_response.dart';

/// Attribute mapping details.
class MapperAttributeMappingsResponse {
  /// List of attribute mappings.
  final List<MapperAttributeMappingResponse>? attributeMappings;

  /// Creates a new [MapperAttributeMappingsResponse].
  /// [attributeMappings] List of attribute mappings.
  MapperAttributeMappingsResponse({
    this.attributeMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMappings': ?attributeMappings == null ? null : pulumi.Input.encodeList<MapperAttributeMappingResponse, Map<String, dynamic>>(attributeMappings!, (value) => value.toMap()),
    };
  }

  factory MapperAttributeMappingsResponse.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMappingsResponse(
      attributeMappings: map['attributeMappings'] == null ? null : pulumi.Input.decodeList<MapperAttributeMappingResponse>(map['attributeMappings'], (value) => MapperAttributeMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

