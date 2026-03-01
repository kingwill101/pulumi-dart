// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_schema_version_args_doc}
/// Arguments for getSchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_schema_version_args_doc}
class GetSchemaVersionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema name parameter.
  final pulumi.Input<String> schemaName;
  /// Schema registry name parameter.
  final pulumi.Input<String> schemaRegistryName;
  /// Schema version name parameter.
  final pulumi.Input<String> schemaVersionName;

  /// Creates a new [GetSchemaVersionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] Schema name parameter.
  /// [schemaRegistryName] Schema registry name parameter.
  /// [schemaVersionName] Schema version name parameter.
  GetSchemaVersionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> schemaRegistryName,
    required pulumi.Output<String> schemaVersionName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      schemaRegistryName = pulumi.Input.asInput<String>(schemaRegistryName),
      schemaVersionName = pulumi.Input.asInput<String>(schemaVersionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'schemaRegistryName': schemaRegistryName,
      'schemaVersionName': schemaVersionName,
    };
  }

  factory GetSchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaVersionArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      schemaRegistryName: pulumi.Output.create<String>(map['schemaRegistryName'] as String),
      schemaVersionName: pulumi.Output.create<String>(map['schemaVersionName'] as String),
    );
  }
}

