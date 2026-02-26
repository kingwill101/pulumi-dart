// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_policy_detail_exclusion_rules_amis/lifecycle_policy_policy_detail_exclusion_rules_amis.dart';

class LifecyclePolicyPolicyDetailExclusionRules {
  /// Lists configuration values that apply to AMIs that Image Builder should exclude from the lifecycle action. Detailed below.
  final LifecyclePolicyPolicyDetailExclusionRulesAmis? amis;

  /// Contains a list of tags that Image Builder uses to skip lifecycle actions for Image Builder image resources that have them.
  final Map<String, String>? tagMap;

  LifecyclePolicyPolicyDetailExclusionRules({
    this.amis,
    this.tagMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amisValue = amis;
    if (amisValue != null) {
      map['amis'] = amisValue.toMap();
    }
    final tagMapValue = tagMap;
    if (tagMapValue != null) {
      map['tagMap'] = tagMapValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailExclusionRules.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailExclusionRules(
      amis: map['amis'] == null
          ? null
          : LifecyclePolicyPolicyDetailExclusionRulesAmis.fromMap(
              (map['amis'] as Map).cast<String, dynamic>()),
      tagMap: map['tagMap'] == null
          ? null
          : (map['tagMap'] as Map).cast<String, String>(),
    );
  }
}
