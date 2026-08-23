// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureresiliencemanagement_get_usage_plan_args_doc}
/// Arguments for getUsagePlan.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_get_usage_plan_args_doc}
class GetUsagePlanArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the usage plan.
  final pulumi.Input<String> usagePlanName;

  /// Creates a new [GetUsagePlanArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [usagePlanName] The name of the usage plan.
  const GetUsagePlanArgs({
    required this.resourceGroupName,
    required this.usagePlanName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'usagePlanName': usagePlanName,
    };
  }

  factory GetUsagePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetUsagePlanArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      usagePlanName: pulumi.Input.fromValue(map['usagePlanName'] as String),
    );
  }
}
