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
    required this.resourceGroupName,
    required this.schemaName,
    required this.schemaRegistryName,
    required this.schemaVersionName,
  });

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
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      schemaRegistryName: (map['schemaRegistryName'] as String).input(),
      schemaVersionName: (map['schemaVersionName'] as String).input(),
    );
  }
}

