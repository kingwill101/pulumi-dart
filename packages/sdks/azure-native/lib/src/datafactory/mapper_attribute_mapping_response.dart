// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_reference_response.dart';

/// Source and target column mapping details.
class MapperAttributeMappingResponse {
  /// Reference of the source column used in the mapping. It is used for 'Direct' mapping type only.
  final pulumi.Input<MapperAttributeReferenceResponse>? attributeReference;
  /// List of references for source columns. It is used for 'Derived' and 'Aggregate' type mappings only.
  final pulumi.Input<List<MapperAttributeReferenceResponse>>? attributeReferences;
  /// Expression used for 'Aggregate' and 'Derived' type mapping.
  final pulumi.Input<String>? expression;
  /// Name of the function used for 'Aggregate' and 'Derived' (except 'Advanced') type mapping.
  final pulumi.Input<String>? functionName;
  /// Name of the target column.
  final pulumi.Input<String>? name;
  /// Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
  final pulumi.Input<String>? type;

  /// Creates a new [MapperAttributeMappingResponse].
  /// [attributeReference] Reference of the source column used in the mapping. It is used for 'Direct' mapping type only.
  /// [attributeReferences] List of references for source columns. It is used for 'Derived' and 'Aggregate' type mappings only.
  /// [expression] Expression used for 'Aggregate' and 'Derived' type mapping.
  /// [functionName] Name of the function used for 'Aggregate' and 'Derived' (except 'Advanced') type mapping.
  /// [name] Name of the target column.
  /// [type] Type of the CDC attribute mapping. Note: 'Advanced' mapping type is also saved as 'Derived'.
  MapperAttributeMappingResponse({
    this.attributeReference,
    this.attributeReferences,
    this.expression,
    this.functionName,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeReference': ?pulumi.Input.mapOptionalInputValue<MapperAttributeReferenceResponse, Map<String, dynamic>>(attributeReference, (value) => value.toMap()),
      'attributeReferences': ?pulumi.Input.mapOptionalInputValue<List<MapperAttributeReferenceResponse>, List<Map<String, dynamic>>>(attributeReferences, (value) => pulumi.Input.encodeList<MapperAttributeReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expression': ?expression,
      'functionName': ?functionName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory MapperAttributeMappingResponse.fromMap(Map<String, dynamic> map) {
    return MapperAttributeMappingResponse(
      attributeReference: (() { final guardedValue = map['attributeReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperAttributeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attributeReferences: (() { final guardedValue = map['attributeReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperAttributeReferenceResponse>(guardedValue, (value) => MapperAttributeReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

