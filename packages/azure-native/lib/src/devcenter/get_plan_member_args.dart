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
  GetPlanMemberArgs({
    required String memberName,
    required String planName,
    required String resourceGroupName,
  }) :
      memberName = pulumi.Input.asInput<String>(memberName),
      planName = pulumi.Input.asInput<String>(planName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberName': memberName,
      'planName': planName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPlanMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanMemberArgs(
      memberName: map['memberName'] as String,
      planName: map['planName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

