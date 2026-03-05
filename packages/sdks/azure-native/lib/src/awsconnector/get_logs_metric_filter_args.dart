// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_logs_metric_filter_args_doc}
/// Arguments for getLogsMetricFilter.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_logs_metric_filter_args_doc}
class GetLogsMetricFilterArgs {
  /// Name of LogsMetricFilter
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLogsMetricFilterArgs].
  /// [name] Name of LogsMetricFilter
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLogsMetricFilterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogsMetricFilterArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsMetricFilterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

