// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  /// @pattern tagValues/[0-9]+
  final String? name;

  /// (Output)
  /// [Output Only] State of the secure tag, either `EFFECTIVE` or
  /// `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted
  /// or its network is deleted.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedRuleMatchLayer4Config"" pulumi-lang-dotnet=""NestedRuleMatchLayer4Config"" pulumi-lang-go=""nestedRuleMatchLayer4Config"" pulumi-lang-python=""nested_rule_match_layer4_config"" pulumi-lang-yaml=""nestedRuleMatchLayer4Config"" pulumi-lang-java=""nestedRuleMatchLayer4Config"">"nested_rule_match_layer4_config"</span>></a>The <span pulumi-lang-nodejs="`layer4Config`" pulumi-lang-dotnet="`Layer4Config`" pulumi-lang-go="`layer4Config`" pulumi-lang-python="`layer4_config`" pulumi-lang-yaml="`layer4Config`" pulumi-lang-java="`layer4Config`">`layer4_config`</span> block supports:
  final String? state;

  FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
