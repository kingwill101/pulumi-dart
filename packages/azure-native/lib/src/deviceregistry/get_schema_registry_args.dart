// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_schema_registry_args_doc}
/// Arguments for getSchemaRegistry.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_schema_registry_args_doc}
class GetSchemaRegistryArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema registry name parameter.
  final pulumi.Input<String> schemaRegistryName;

  /// Creates a new [GetSchemaRegistryArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaRegistryName] Schema registry name parameter.
  GetSchemaRegistryArgs({
    required String resourceGroupName,
    required String schemaRegistryName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaRegistryName = pulumi.Input.asInput<String>(schemaRegistryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schemaRegistryName': schemaRegistryName,
    };
  }

  factory GetSchemaRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaRegistryArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      schemaRegistryName: map['schemaRegistryName'] as String,
    );
  }
}

