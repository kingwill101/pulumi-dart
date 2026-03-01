// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_plan_args_doc}
/// Arguments for getPlan.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_plan_args_doc}
class GetPlanArgs {
  /// The name of the devcenter plan.
  final pulumi.Input<String> planName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPlanArgs].
  /// [planName] The name of the devcenter plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPlanArgs({
    required String planName,
    required String resourceGroupName,
  }) :
      planName = pulumi.Input.asInput<String>(planName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planName': planName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanArgs(
      planName: map['planName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

