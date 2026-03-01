// ignore_for_file: unused_element, unnecessary_cast

import 'schema_registry_ref_response.dart';

/// The properties of the Instance resource.
class InstancePropertiesResponse {
  /// Detailed description of the Instance.
  final String? description;
  /// The status of the last operation.
  final String provisioningState;
  /// The reference to the Schema Registry for this AIO Instance.
  final SchemaRegistryRefResponse schemaRegistryRef;
  /// The Azure IoT Operations version.
  final String version;

  /// Creates a new [InstancePropertiesResponse].
  /// [description] Detailed description of the Instance.
  /// [provisioningState] The status of the last operation.
  /// [schemaRegistryRef] The reference to the Schema Registry for this AIO Instance.
  /// [version] The Azure IoT Operations version.
  InstancePropertiesResponse({
    this.description,
    required this.provisioningState,
    required this.schemaRegistryRef,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
      'schemaRegistryRef': schemaRegistryRef.toMap(),
      'version': version,
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      provisioningState: map['provisioningState'] as String,
      schemaRegistryRef: SchemaRegistryRefResponse.fromMap((map['schemaRegistryRef'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}

