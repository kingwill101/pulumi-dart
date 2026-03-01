// ignore_for_file: unused_element, unnecessary_cast

import 'mapper_connection_reference_response.dart';

/// Attribute reference details for the referred column.
class MapperAttributeReferenceResponse {
  /// Name of the table.
  final String? entity;
  /// The connection reference for the connection.
  final MapperConnectionReferenceResponse? entityConnectionReference;
  /// Name of the column.
  final String? name;

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
      'entityConnectionReference': ?entityConnectionReference == null ? null : entityConnectionReference!.toMap(),
      'name': ?name,
    };
  }

  factory MapperAttributeReferenceResponse.fromMap(Map<String, dynamic> map) {
    return MapperAttributeReferenceResponse(
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityConnectionReference: map['entityConnectionReference'] == null ? null : MapperConnectionReferenceResponse.fromMap((map['entityConnectionReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

