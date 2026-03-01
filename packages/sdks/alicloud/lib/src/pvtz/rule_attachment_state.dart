// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_attachment_vpc.dart';

/// Input properties used for looking up and filtering RuleAttachment resources.
class RuleAttachmentState {
  /// The ID of the rule.
  final pulumi.Input<String>? ruleId;
  /// The List of the VPC. See `vpcs` below.
  final pulumi.Input<List<RuleAttachmentVpc>>? vpcs;

  /// Creates a new [RuleAttachmentState].
  /// [ruleId] The ID of the rule.
  /// [vpcs] The List of the VPC. See `vpcs` below.
  RuleAttachmentState({
    pulumi.Output<String>? ruleId,
    pulumi.Output<List<RuleAttachmentVpc>>? vpcs,
  }) :
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      vpcs = pulumi.Input.asOptionalInput<List<RuleAttachmentVpc>>(vpcs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ?ruleId,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<RuleAttachmentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<RuleAttachmentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleAttachmentState.fromMap(Map<String, dynamic> map) {
    return RuleAttachmentState(
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      vpcs: map['vpcs'] == null ? null : pulumi.Output.create<List<RuleAttachmentVpc>>(pulumi.Input.decodeList<RuleAttachmentVpc>(map['vpcs'], (value) => RuleAttachmentVpc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

