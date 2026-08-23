// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_detail_exclusion_rules_amis.dart';

class LifecyclePolicyPolicyDetailExclusionRules {
  /// Lists configuration values that apply to AMIs that Image Builder should exclude from the lifecycle action. Detailed below.
  final pulumi.Input<LifecyclePolicyPolicyDetailExclusionRulesAmis>? amis;
  /// Contains a list of tags that Image Builder uses to skip lifecycle actions for Image Builder image resources that have them.
  final pulumi.Input<Map<String, String>>? tagMap;

  /// Creates a new [LifecyclePolicyPolicyDetailExclusionRules].
  /// [amis] Lists configuration values that apply to AMIs that Image Builder should exclude from the lifecycle action. Detailed below.
  /// [tagMap] Contains a list of tags that Image Builder uses to skip lifecycle actions for Image Builder image resources that have them.
  const LifecyclePolicyPolicyDetailExclusionRules({
    this.amis,
    this.tagMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amis': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailExclusionRulesAmis, Map<String, dynamic>>(amis, (value) => value.toMap()),
      'tagMap': ?tagMap,
    };
  }

  factory LifecyclePolicyPolicyDetailExclusionRules.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailExclusionRules(
      amis: (() { final guardedValue = map['amis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailExclusionRulesAmis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagMap: (() { final guardedValue = map['tagMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
