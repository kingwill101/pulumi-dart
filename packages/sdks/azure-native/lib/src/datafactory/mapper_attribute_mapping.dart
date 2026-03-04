// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_reference.dart';

/// Source and target column mapping details.
class MapperAttributeMapping {
  /// Reference of the source column used in the mapping. It is used for 'Direct' mapping type only.
  final pulumi.Input<MapperAttributeReference>? attributeReference;

  /// List of references for source columns. It is used for 'Derived' and 'Aggregate' type mappings only.
  final pulumi.Input<List<MapperAttributeReference>>? attributeReferences;

  /// Expression used for 'Aggregate' and 'Derived' type mapping.
  final pulumi.Input<String>? expression;

  /// Name of the function used for 'Aggregate' and 'Derived' (except 'Advanced') type mapping.
  final pulumi.Input<String>? functionName;

  /// Name of the target column.
  final pulumi.Input<String>? name;

  /// Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
  final pulumi.Input<String>? type;

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
      'attributeReference':
          ?pulumi.Input.mapOptionalInputValue<
            MapperAttributeReference,
            Map<String, dynamic>
          >(attributeReference, (value) => value.toMap()),
      'attributeReferences':
          ?pulumi.Input.mapOptionalInputValue<
            List<MapperAttributeReference>,
            List<Map<String, dynamic>>
          >(
            attributeReferences,
            (value) =>
                pulumi.Input.encodeList<
                  MapperAttributeReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'expression': ?expression,
      'functionName': ?functionName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory MapperAttributeMapping.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMapping(
      attributeReference: (() {
        final guardedValue = map['attributeReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MapperAttributeReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      attributeReferences: (() {
        final guardedValue = map['attributeReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MapperAttributeReference>(
            guardedValue,
            (value) => MapperAttributeReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionName: (() {
        final guardedValue = map['functionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
