// ignore_for_file: unused_element, unnecessary_cast

import '../policy_list_policy_allow/policy_list_policy_allow.dart';
import '../policy_list_policy_deny/policy_list_policy_deny.dart';

class PolicyListPolicy {
  /// or <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span> - (Optional) One or the other must be set.
  final PolicyListPolicyAllow? allow;

  /// One or the other must be set.
  final PolicyListPolicyDeny? deny;

  /// If set to true, the values from the effective Policy of the parent resource
  /// are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  ///
  /// The <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> or <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span> blocks support:
  final bool? inheritFromParent;

  /// The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  final String? suggestedValue;

  PolicyListPolicy({
    this.allow,
    this.deny,
    this.inheritFromParent,
    this.suggestedValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowValue = allow;
    if (allowValue != null) {
      map['allow'] = allowValue.toMap();
    }
    final denyValue = deny;
    if (denyValue != null) {
      map['deny'] = denyValue.toMap();
    }
    final inheritFromParentValue = inheritFromParent;
    if (inheritFromParentValue != null) {
      map['inheritFromParent'] = inheritFromParentValue;
    }
    final suggestedValueValue = suggestedValue;
    if (suggestedValueValue != null) {
      map['suggestedValue'] = suggestedValueValue;
    }
    return map;
  }

  factory PolicyListPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyListPolicy(
      allow: map['allow'] == null
          ? null
          : PolicyListPolicyAllow.fromMap(
              (map['allow'] as Map).cast<String, dynamic>()),
      deny: map['deny'] == null
          ? null
          : PolicyListPolicyDeny.fromMap(
              (map['deny'] as Map).cast<String, dynamic>()),
      inheritFromParent: map['inheritFromParent'] == null
          ? null
          : map['inheritFromParent'] as bool,
      suggestedValue: map['suggestedValue'] == null
          ? null
          : map['suggestedValue'] as String,
    );
  }
}
