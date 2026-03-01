// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyWithRulesRuleTargetSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  /// @pattern tagValues/[0-9]+
  final String? name;

  /// (Output)
  /// [Output Only] State of the secure tag, either `EFFECTIVE` or
  /// `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted
  /// or its network is deleted.
  final String? state;

  /// Creates a new [FirewallPolicyWithRulesRuleTargetSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  FirewallPolicyWithRulesRuleTargetSecureTag({this.name, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'state': ?state};
  }

  factory FirewallPolicyWithRulesRuleTargetSecureTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyWithRulesRuleTargetSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
