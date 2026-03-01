// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_reference.dart';

/// Source and target column mapping details.
class MapperAttributeMapping {
  /// Reference of the source column used in the mapping. It is used for 'Direct' mapping type only.
  final MapperAttributeReference? attributeReference;
  /// List of references for source columns. It is used for 'Derived' and 'Aggregate' type mappings only.
  final List<MapperAttributeReference>? attributeReferences;
  /// Expression used for 'Aggregate' and 'Derived' type mapping.
  final String? expression;
  /// Name of the function used for 'Aggregate' and 'Derived' (except 'Advanced') type mapping.
  final String? functionName;
  /// Name of the target column.
  final String? name;
  /// Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
  final String? type;

  /// Creates a new [MapperAttributeMapping].
  /// [attributeReference] Reference of the source column used in the mapping. It is used for 'Direct' mapping type only.
  /// [attributeReferences] List of references for source columns. It is used for 'Derived' and 'Aggregate' type mappings only.
  /// [expression] Expression used for 'Aggregate' and 'Derived' type mapping.
  /// [functionName] Name of the function used for 'Aggregate' and 'Derived' (except 'Advanced') type mapping.
  /// [name] Name of the target column.
  /// [type] Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
  MapperAttributeMapping({
    this.attributeReference,
    this.attributeReferences,
    this.expression,
    this.functionName,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeReference': ?attributeReference == null ? null : attributeReference!.toMap(),
      'attributeReferences': ?attributeReferences == null ? null : pulumi.Input.encodeList<MapperAttributeReference, Map<String, dynamic>>(attributeReferences!, (value) => value.toMap()),
      'expression': ?expression,
      'functionName': ?functionName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory MapperAttributeMapping.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMapping(
      attributeReference: map['attributeReference'] == null ? null : MapperAttributeReference.fromMap((map['attributeReference'] as Map).cast<String, dynamic>()),
      attributeReferences: map['attributeReferences'] == null ? null : pulumi.Input.decodeList<MapperAttributeReference>(map['attributeReferences'], (value) => MapperAttributeReference.fromMap((value as Map).cast<String, dynamic>())),
      expression: map['expression'] == null ? null : map['expression'] as String,
      functionName: map['functionName'] == null ? null : map['functionName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

