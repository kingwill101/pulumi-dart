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
  const RuleAttachmentState({
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
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleAttachmentVpc>(guardedValue, (value) => RuleAttachmentVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

