// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_schema_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_schema_args_doc}
class GetSchemaArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema name parameter.
  final pulumi.Input<String> schemaName;
  /// Schema registry name parameter.
  final pulumi.Input<String> schemaRegistryName;

  /// Creates a new [GetSchemaArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] Schema name parameter.
  /// [schemaRegistryName] Schema registry name parameter.
  GetSchemaArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> schemaRegistryName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      schemaRegistryName = pulumi.Input.asInput<String>(schemaRegistryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'schemaRegistryName': schemaRegistryName,
    };
  }

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      schemaRegistryName: pulumi.Output.create<String>(map['schemaRegistryName'] as String),
    );
  }
}

