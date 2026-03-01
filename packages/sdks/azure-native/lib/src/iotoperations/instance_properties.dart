// ignore_for_file: unused_element, unnecessary_cast

import 'schema_registry_ref.dart';

/// The properties of the Instance resource.
class InstanceProperties {
  /// Detailed description of the Instance.
  final String? description;
  /// The reference to the Schema Registry for this AIO Instance.
  final SchemaRegistryRef schemaRegistryRef;

  /// Creates a new [InstanceProperties].
  /// [description] Detailed description of the Instance.
  /// [schemaRegistryRef] The reference to the Schema Registry for this AIO Instance.
  InstanceProperties({
    this.description,
    required this.schemaRegistryRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'schemaRegistryRef': schemaRegistryRef.toMap(),
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      description: map['description'] == null ? null : map['description'] as String,
      schemaRegistryRef: SchemaRegistryRef.fromMap((map['schemaRegistryRef'] as Map).cast<String, dynamic>()),
    );
  }
}

