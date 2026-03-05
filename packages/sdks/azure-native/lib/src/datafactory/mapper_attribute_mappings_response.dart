// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_mapping_response.dart';

/// Attribute mapping details.
class MapperAttributeMappingsResponse {
  /// List of attribute mappings.
  final pulumi.Input<List<MapperAttributeMappingResponse>>? attributeMappings;

  /// Creates a new [MapperAttributeMappingsResponse].
  /// [attributeMappings] List of attribute mappings.
  MapperAttributeMappingsResponse({
    this.attributeMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMappings': ?pulumi.Input.mapOptionalInputValue<List<MapperAttributeMappingResponse>, List<Map<String, dynamic>>>(attributeMappings, (value) => pulumi.Input.encodeList<MapperAttributeMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperAttributeMappingsResponse.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMappingsResponse(
      attributeMappings: (() { final guardedValue = map['attributeMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperAttributeMappingResponse>(guardedValue, (value) => MapperAttributeMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

