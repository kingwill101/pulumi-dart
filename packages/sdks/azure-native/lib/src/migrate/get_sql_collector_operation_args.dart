// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_sql_collector_operation_args_doc}
/// Arguments for getSqlCollectorOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_sql_collector_operation_args_doc}
class GetSqlCollectorOperationArgs {
  /// Sql collector ARM name.
  final pulumi.Input<String> collectorName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSqlCollectorOperationArgs].
  /// [collectorName] Sql collector ARM name.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSqlCollectorOperationArgs({
    required pulumi.Output<String> collectorName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      collectorName = pulumi.Input.asInput<String>(collectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorName': collectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSqlCollectorOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlCollectorOperationArgs(
      collectorName: pulumi.Output.create<String>(map['collectorName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

