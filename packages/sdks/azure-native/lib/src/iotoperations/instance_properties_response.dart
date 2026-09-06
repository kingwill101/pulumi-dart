// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_registry_ref_response.dart';

/// The properties of the Instance resource.
class InstancePropertiesResponse {
  /// Detailed description of the Instance.
  final pulumi.Input<String?>? description;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The reference to the Schema Registry for this AIO Instance.
  final pulumi.Input<SchemaRegistryRefResponse> schemaRegistryRef;
  /// The Azure IoT Operations version.
  final pulumi.Input<String> version;

  /// Creates a new [InstancePropertiesResponse].
  /// [description] Detailed description of the Instance.
  /// [provisioningState] The status of the last operation.
  /// [schemaRegistryRef] The reference to the Schema Registry for this AIO Instance.
  /// [version] The Azure IoT Operations version.
  const InstancePropertiesResponse({
    this.description,
    required this.provisioningState,
    required this.schemaRegistryRef,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
      'schemaRegistryRef': pulumi.Input.mapInputValue<SchemaRegistryRefResponse, Map<String, dynamic>>(schemaRegistryRef, (value) => value.toMap()),
      'version': version,
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      schemaRegistryRef: pulumi.Input.fromValue(SchemaRegistryRefResponse.fromMap((map['schemaRegistryRef']! as Map).cast<String, dynamic>())),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
