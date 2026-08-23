// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_plan_member_args_doc}
/// Arguments for getPlanMember.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_plan_member_args_doc}
class GetPlanMemberArgs {
  /// The name of a devcenter plan member.
  final pulumi.Input<String> memberName;
  /// The name of the devcenter plan.
  final pulumi.Input<String> planName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPlanMemberArgs].
  /// [memberName] The name of a devcenter plan member.
  /// [planName] The name of the devcenter plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPlanMemberArgs({
    required this.memberName,
    required this.planName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberName': memberName,
      'planName': planName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPlanMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanMemberArgs(
      memberName: pulumi.Input.fromValue(map['memberName'] as String),
      planName: pulumi.Input.fromValue(map['planName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
