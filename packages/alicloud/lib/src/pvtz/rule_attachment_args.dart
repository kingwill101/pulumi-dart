// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_attachment_vpc.dart';

/// {@template pulumi_pvtz_rule_attachment_rule_attachment_args_doc}
/// The set of arguments for RuleAttachment.
/// {@endtemplate}
/// {@macro pulumi_pvtz_rule_attachment_rule_attachment_args_doc}
class RuleAttachmentArgs {
  /// The ID of the rule.
  final pulumi.Input<String> ruleId;
  /// The List of the VPC. See `vpcs` below.
  final pulumi.Input<List<RuleAttachmentVpc>> vpcs;

  /// Creates a new [RuleAttachmentArgs].
  /// [ruleId] The ID of the rule.
  /// [vpcs] The List of the VPC. See `vpcs` below.
  RuleAttachmentArgs({
    required String ruleId,
    required List<RuleAttachmentVpc> vpcs,
  }) :
      ruleId = pulumi.Input.asInput<String>(ruleId),
      vpcs = pulumi.Input.asInput<List<RuleAttachmentVpc>>(vpcs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
      'vpcs': pulumi.Input.mapInputValue<List<RuleAttachmentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<RuleAttachmentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RuleAttachmentArgs(
      ruleId: map['ruleId'] as String,
      vpcs: pulumi.Input.decodeList<RuleAttachmentVpc>(map['vpcs'], (value) => RuleAttachmentVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

