// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_connection_reference_response.dart';

/// Attribute reference details for the referred column.
class MapperAttributeReferenceResponse {
  /// Name of the table.
  final pulumi.Input<String>? entity;
  /// The connection reference for the connection.
  final pulumi.Input<MapperConnectionReferenceResponse>? entityConnectionReference;
  /// Name of the column.
  final pulumi.Input<String>? name;

  /// Creates a new [MapperAttributeReferenceResponse].
  /// [entity] Name of the table.
  /// [entityConnectionReference] The connection reference for the connection.
  /// [name] Name of the column.
  MapperAttributeReferenceResponse({
    this.entity,
    this.entityConnectionReference,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'entityConnectionReference': ?pulumi.Input.mapOptionalInputValue<MapperConnectionReferenceResponse, Map<String, dynamic>>(entityConnectionReference, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory MapperAttributeReferenceResponse.fromMap(Map<String, dynamic> map) {
    return MapperAttributeReferenceResponse(
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityConnectionReference: (() { final guardedValue = map['entityConnectionReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperConnectionReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

