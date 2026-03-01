// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_durabletask_get_retention_policy_args_doc}
/// Arguments for getRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_durabletask_get_retention_policy_args_doc}
class GetRetentionPolicyArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;

  /// Creates a new [GetRetentionPolicyArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  GetRetentionPolicyArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schedulerName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedulerName = pulumi.Input.asInput<String>(schedulerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schedulerName': schedulerName,
    };
  }

  factory GetRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRetentionPolicyArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schedulerName: pulumi.Output.create<String>(map['schedulerName'] as String),
    );
  }
}

