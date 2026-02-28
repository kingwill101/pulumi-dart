// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyRuleSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;

  /// Creates a new [FirewallPolicyRuleSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  FirewallPolicyRuleSecureTag({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FirewallPolicyRuleSecureTag.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
