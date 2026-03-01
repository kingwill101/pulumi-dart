// ignore_for_file: unused_element, unnecessary_cast

import 'mapper_connection_reference.dart';

/// Attribute reference details for the referred column.
class MapperAttributeReference {
  /// Name of the table.
  final String? entity;
  /// The connection reference for the connection.
  final MapperConnectionReference? entityConnectionReference;
  /// Name of the column.
  final String? name;

  /// Creates a new [MapperAttributeReference].
  /// [entity] Name of the table.
  /// [entityConnectionReference] The connection reference for the connection.
  /// [name] Name of the column.
  MapperAttributeReference({
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

  factory MapperAttributeReference.fromMap(Map<String, dynamic> map) {
    return MapperAttributeReference(
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityConnectionReference: map['entityConnectionReference'] == null ? null : MapperConnectionReference.fromMap((map['entityConnectionReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

