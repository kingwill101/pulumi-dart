// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_workload_group_args_doc}
/// The set of arguments for WorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_workload_group_args_doc}
class WorkloadGroupArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The workload group importance level.
  final pulumi.Input<String>? importance;
  /// The workload group cap percentage resource.
  final pulumi.Input<int> maxResourcePercent;
  /// The workload group request maximum grant percentage.
  final pulumi.Input<double>? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final pulumi.Input<int> minResourcePercent;
  /// The workload group request minimum grant percentage.
  final pulumi.Input<double> minResourcePercentPerRequest;
  /// The workload group query execution timeout.
  final pulumi.Input<int>? queryExecutionTimeout;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the workload group.
  final pulumi.Input<String>? workloadGroupName;

  /// Creates a new [WorkloadGroupArgs].
  /// [databaseName] The name of the database.
  /// [importance] The workload group importance level.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [queryExecutionTimeout] The workload group query execution timeout.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [workloadGroupName] The name of the workload group.
  WorkloadGroupArgs({
    required String databaseName,
    String? importance,
    required int maxResourcePercent,
    double? maxResourcePercentPerRequest,
    required int minResourcePercent,
    required double minResourcePercentPerRequest,
    int? queryExecutionTimeout,
    required String resourceGroupName,
    required String serverName,
    String? workloadGroupName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      importance = pulumi.Input.asOptionalInput<String>(importance),
      maxResourcePercent = pulumi.Input.asInput<int>(maxResourcePercent),
      maxResourcePercentPerRequest = pulumi.Input.asOptionalInput<double>(maxResourcePercentPerRequest),
      minResourcePercent = pulumi.Input.asInput<int>(minResourcePercent),
      minResourcePercentPerRequest = pulumi.Input.asInput<double>(minResourcePercentPerRequest),
      queryExecutionTimeout = pulumi.Input.asOptionalInput<int>(queryExecutionTimeout),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      workloadGroupName = pulumi.Input.asOptionalInput<String>(workloadGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'importance': ?importance,
      'maxResourcePercent': maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': minResourcePercent,
      'minResourcePercentPerRequest': minResourcePercentPerRequest,
      'queryExecutionTimeout': ?queryExecutionTimeout,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'workloadGroupName': ?workloadGroupName,
    };
  }

  factory WorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadGroupArgs(
      databaseName: map['databaseName'] as String,
      importance: map['importance'] == null ? null : map['importance'] as String,
      maxResourcePercent: map['maxResourcePercent'] as int,
      maxResourcePercentPerRequest: map['maxResourcePercentPerRequest'] == null ? null : map['maxResourcePercentPerRequest'] as double,
      minResourcePercent: map['minResourcePercent'] as int,
      minResourcePercentPerRequest: map['minResourcePercentPerRequest'] as double,
      queryExecutionTimeout: map['queryExecutionTimeout'] == null ? null : map['queryExecutionTimeout'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      workloadGroupName: map['workloadGroupName'] == null ? null : map['workloadGroupName'] as String,
    );
  }
}

