// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_plan_member_args_doc}
/// The set of arguments for PlanMember.
/// {@endtemplate}
/// {@macro pulumi_devcenter_plan_member_args_doc}
class PlanMemberArgs {
  /// The unique id of the member.
  final pulumi.Input<String>? memberId;
  /// The name of a devcenter plan member.
  final pulumi.Input<String>? memberName;
  /// The type of the member (user, group)
  final pulumi.Input<String>? memberType;
  /// The name of the devcenter plan.
  final pulumi.Input<String> planName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The tier of the member.
  final pulumi.Input<String>? tier;

  /// Creates a new [PlanMemberArgs].
  /// [memberId] The unique id of the member.
  /// [memberName] The name of a devcenter plan member.
  /// [memberType] The type of the member (user, group)
  /// [planName] The name of the devcenter plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [tier] The tier of the member.
  PlanMemberArgs({
    this.memberId,
    this.memberName,
    this.memberType,
    required this.planName,
    required this.resourceGroupName,
    this.tags,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberId': ?memberId,
      'memberName': ?memberName,
      'memberType': ?memberType,
      'planName': planName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tier': ?tier,
    };
  }

  factory PlanMemberArgs.fromMap(Map<String, dynamic> map) {
    return PlanMemberArgs(
      memberId: map['memberId'] == null ? null : (map['memberId'] as String).input(),
      memberName: map['memberName'] == null ? null : (map['memberName'] as String).input(),
      memberType: map['memberType'] == null ? null : (map['memberType'] as String).input(),
      planName: (map['planName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

