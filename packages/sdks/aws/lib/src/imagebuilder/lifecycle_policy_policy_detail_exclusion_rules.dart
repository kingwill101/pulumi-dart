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
  LifecyclePolicyPolicyDetailExclusionRules({
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
      amis: map['amis'] == null ? null : ((LifecyclePolicyPolicyDetailExclusionRulesAmis.fromMap((map['amis']! as Map).cast<String, dynamic>())).input()).input(),
      tagMap: map['tagMap'] == null ? null : (((map['tagMap'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

