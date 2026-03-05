// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_mapping.dart';

/// Attribute mapping details.
class MapperAttributeMappings {
  /// List of attribute mappings.
  final pulumi.Input<List<MapperAttributeMapping>>? attributeMappings;

  /// Creates a new [MapperAttributeMappings].
  /// [attributeMappings] List of attribute mappings.
  MapperAttributeMappings({
    this.attributeMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMappings': ?pulumi.Input.mapOptionalInputValue<List<MapperAttributeMapping>, List<Map<String, dynamic>>>(attributeMappings, (value) => pulumi.Input.encodeList<MapperAttributeMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperAttributeMappings.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMappings(
      attributeMappings: (() { final guardedValue = map['attributeMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperAttributeMapping>(guardedValue, (value) => MapperAttributeMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

