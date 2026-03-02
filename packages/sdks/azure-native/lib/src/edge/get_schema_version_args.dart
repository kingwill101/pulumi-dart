// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_schema_version_args_doc}
/// Arguments for getSchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_get_schema_version_args_doc}
class GetSchemaVersionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String> schemaName;
  /// The name of the SchemaVersion
  final pulumi.Input<String> schemaVersionName;

  /// Creates a new [GetSchemaVersionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  /// [schemaVersionName] The name of the SchemaVersion
  GetSchemaVersionArgs({
    required this.resourceGroupName,
    required this.schemaName,
    required this.schemaVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'schemaVersionName': schemaVersionName,
    };
  }

  factory GetSchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaVersionArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      schemaVersionName: (map['schemaVersionName'] as String).input(),
    );
  }
}

