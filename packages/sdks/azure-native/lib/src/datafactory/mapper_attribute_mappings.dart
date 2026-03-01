// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_mapping.dart';

/// Attribute mapping details.
class MapperAttributeMappings {
  /// List of attribute mappings.
  final List<MapperAttributeMapping>? attributeMappings;

  /// Creates a new [MapperAttributeMappings].
  /// [attributeMappings] List of attribute mappings.
  MapperAttributeMappings({
    this.attributeMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMappings': ?attributeMappings == null ? null : pulumi.Input.encodeList<MapperAttributeMapping, Map<String, dynamic>>(attributeMappings!, (value) => value.toMap()),
    };
  }

  factory MapperAttributeMappings.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMappings(
      attributeMappings: map['attributeMappings'] == null ? null : pulumi.Input.decodeList<MapperAttributeMapping>(map['attributeMappings'], (value) => MapperAttributeMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

