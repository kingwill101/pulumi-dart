// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_labservices_get_lab_plan_args_doc}
/// Arguments for getLabPlan.
/// {@endtemplate}
/// {@macro pulumi_labservices_get_lab_plan_args_doc}
class GetLabPlanArgs {
  /// The name of the lab plan that uniquely identifies it within containing resource group. Used in resource URIs and in UI.
  final pulumi.Input<String> labPlanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLabPlanArgs].
  /// [labPlanName] The name of the lab plan that uniquely identifies it within containing resource group. Used in resource URIs and in UI.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLabPlanArgs({
    required String labPlanName,
    required String resourceGroupName,
  }) :
      labPlanName = pulumi.Input.asInput<String>(labPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labPlanName': labPlanName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLabPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetLabPlanArgs(
      labPlanName: map['labPlanName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

