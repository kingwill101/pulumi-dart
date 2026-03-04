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
      memberId: (() {
        final guardedValue = map['memberId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberName: (() {
        final guardedValue = map['memberName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberType: (() {
        final guardedValue = map['memberType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planName: pulumi.Input.fromValue(map['planName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
