// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_registry_ref.dart';

/// The properties of the Instance resource.
class InstanceProperties {
  /// Detailed description of the Instance.
  final pulumi.Input<String>? description;
  /// The reference to the Schema Registry for this AIO Instance.
  final pulumi.Input<SchemaRegistryRef> schemaRegistryRef;

  /// Creates a new [InstanceProperties].
  /// [description] Detailed description of the Instance.
  /// [schemaRegistryRef] The reference to the Schema Registry for this AIO Instance.
  const InstanceProperties({
    this.description,
    required this.schemaRegistryRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'schemaRegistryRef': pulumi.Input.mapInputValue<SchemaRegistryRef, Map<String, dynamic>>(schemaRegistryRef, (value) => value.toMap()),
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaRegistryRef: pulumi.Input.fromValue(SchemaRegistryRef.fromMap((map['schemaRegistryRef']! as Map).cast<String, dynamic>())),
    );
  }
}
