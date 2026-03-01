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
    pulumi.Output<String>? memberId,
    pulumi.Output<String>? memberName,
    pulumi.Output<String>? memberType,
    required pulumi.Output<String> planName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
  }) :
      memberId = pulumi.Input.asOptionalInput<String>(memberId),
      memberName = pulumi.Input.asOptionalInput<String>(memberName),
      memberType = pulumi.Input.asOptionalInput<String>(memberType),
      planName = pulumi.Input.asInput<String>(planName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier);

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
      memberId: map['memberId'] == null ? null : pulumi.Output.create<String>(map['memberId'] as String),
      memberName: map['memberName'] == null ? null : pulumi.Output.create<String>(map['memberName'] as String),
      memberType: map['memberType'] == null ? null : pulumi.Output.create<String>(map['memberType'] as String),
      planName: pulumi.Output.create<String>(map['planName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
    );
  }
}

