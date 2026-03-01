// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_sensitivity_label_args_doc}
/// Arguments for getSqlPoolSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_sensitivity_label_args_doc}
class GetSqlPoolSensitivityLabelArgs {
  /// The name of the column.
  final pulumi.Input<String> columnName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schema.
  final pulumi.Input<String> schemaName;
  /// The source of the sensitivity label.
  final pulumi.Input<String> sensitivityLabelSource;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the table.
  final pulumi.Input<String> tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolSensitivityLabelArgs].
  /// [columnName] The name of the column.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [sqlPoolName] SQL pool name
  /// [tableName] The name of the table.
  /// [workspaceName] The name of the workspace.
  GetSqlPoolSensitivityLabelArgs({
    required String columnName,
    required String resourceGroupName,
    required String schemaName,
    required String sensitivityLabelSource,
    required String sqlPoolName,
    required String tableName,
    required String workspaceName,
  }) :
      columnName = pulumi.Input.asInput<String>(columnName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      sensitivityLabelSource = pulumi.Input.asInput<String>(sensitivityLabelSource),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      tableName = pulumi.Input.asInput<String>(tableName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': sensitivityLabelSource,
      'sqlPoolName': sqlPoolName,
      'tableName': tableName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolSensitivityLabelArgs(
      columnName: map['columnName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaName: map['schemaName'] as String,
      sensitivityLabelSource: map['sensitivityLabelSource'] as String,
      sqlPoolName: map['sqlPoolName'] as String,
      tableName: map['tableName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

