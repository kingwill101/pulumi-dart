// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_workload_group_args_doc}
/// The set of arguments for SqlPoolWorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_workload_group_args_doc}
class SqlPoolWorkloadGroupArgs {
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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workload group.
  final pulumi.Input<String>? workloadGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SqlPoolWorkloadGroupArgs].
  /// [importance] The workload group importance level.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [queryExecutionTimeout] The workload group query execution timeout.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [workloadGroupName] The name of the workload group.
  /// [workspaceName] The name of the workspace.
  SqlPoolWorkloadGroupArgs({
    String? importance,
    required int maxResourcePercent,
    double? maxResourcePercentPerRequest,
    required int minResourcePercent,
    required double minResourcePercentPerRequest,
    int? queryExecutionTimeout,
    required String resourceGroupName,
    required String sqlPoolName,
    String? workloadGroupName,
    required String workspaceName,
  }) :
      importance = pulumi.Input.asOptionalInput<String>(importance),
      maxResourcePercent = pulumi.Input.asInput<int>(maxResourcePercent),
      maxResourcePercentPerRequest = pulumi.Input.asOptionalInput<double>(maxResourcePercentPerRequest),
      minResourcePercent = pulumi.Input.asInput<int>(minResourcePercent),
      minResourcePercentPerRequest = pulumi.Input.asInput<double>(minResourcePercentPerRequest),
      queryExecutionTimeout = pulumi.Input.asOptionalInput<int>(queryExecutionTimeout),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      workloadGroupName = pulumi.Input.asOptionalInput<String>(workloadGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importance': ?importance,
      'maxResourcePercent': maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': minResourcePercent,
      'minResourcePercentPerRequest': minResourcePercentPerRequest,
      'queryExecutionTimeout': ?queryExecutionTimeout,
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'workloadGroupName': ?workloadGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory SqlPoolWorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolWorkloadGroupArgs(
      importance: map['importance'] == null ? null : map['importance'] as String,
      maxResourcePercent: map['maxResourcePercent'] as int,
      maxResourcePercentPerRequest: map['maxResourcePercentPerRequest'] == null ? null : map['maxResourcePercentPerRequest'] as double,
      minResourcePercent: map['minResourcePercent'] as int,
      minResourcePercentPerRequest: map['minResourcePercentPerRequest'] as double,
      queryExecutionTimeout: map['queryExecutionTimeout'] == null ? null : map['queryExecutionTimeout'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      sqlPoolName: map['sqlPoolName'] as String,
      workloadGroupName: map['workloadGroupName'] == null ? null : map['workloadGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

