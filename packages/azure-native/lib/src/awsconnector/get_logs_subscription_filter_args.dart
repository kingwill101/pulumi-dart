// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_logs_subscription_filter_args_doc}
/// Arguments for getLogsSubscriptionFilter.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_logs_subscription_filter_args_doc}
class GetLogsSubscriptionFilterArgs {
  /// Name of LogsSubscriptionFilter
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLogsSubscriptionFilterArgs].
  /// [name] Name of LogsSubscriptionFilter
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLogsSubscriptionFilterArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogsSubscriptionFilterArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsSubscriptionFilterArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

