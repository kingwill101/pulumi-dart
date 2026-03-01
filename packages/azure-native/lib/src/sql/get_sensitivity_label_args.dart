// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_sensitivity_label_args_doc}
/// Arguments for getSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_sql_get_sensitivity_label_args_doc}
class GetSensitivityLabelArgs {
  /// The name of the column.
  final pulumi.Input<String> columnName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schema.
  final pulumi.Input<String> schemaName;
  /// The source of the sensitivity label.
  final pulumi.Input<String> sensitivityLabelSource;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetSensitivityLabelArgs].
  /// [columnName] The name of the column.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [serverName] The name of the server.
  /// [tableName] The name of the table.
  GetSensitivityLabelArgs({
    required String columnName,
    required String databaseName,
    required String resourceGroupName,
    required String schemaName,
    required String sensitivityLabelSource,
    required String serverName,
    required String tableName,
  }) :
      columnName = pulumi.Input.asInput<String>(columnName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      sensitivityLabelSource = pulumi.Input.asInput<String>(sensitivityLabelSource),
      serverName = pulumi.Input.asInput<String>(serverName),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': sensitivityLabelSource,
      'serverName': serverName,
      'tableName': tableName,
    };
  }

  factory GetSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return GetSensitivityLabelArgs(
      columnName: map['columnName'] as String,
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaName: map['schemaName'] as String,
      sensitivityLabelSource: map['sensitivityLabelSource'] as String,
      serverName: map['serverName'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

