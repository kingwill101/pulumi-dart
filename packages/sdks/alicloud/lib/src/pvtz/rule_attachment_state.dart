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
    this.ruleId,
    this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ?ruleId,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<RuleAttachmentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<RuleAttachmentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleAttachmentState.fromMap(Map<String, dynamic> map) {
    return RuleAttachmentState(
      ruleId: map['ruleId'] == null ? null : (map['ruleId']! as String).input(),
      vpcs: map['vpcs'] == null ? null : (pulumi.Input.decodeList<RuleAttachmentVpc>(map['vpcs']!, (value) => RuleAttachmentVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

