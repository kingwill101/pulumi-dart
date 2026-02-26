// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyRuleSecureTag3 {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;

  FirewallPolicyRuleSecureTag3({
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

  factory FirewallPolicyRuleSecureTag3.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTag3(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
