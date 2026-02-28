// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyRuleSecureTagComputeBeta {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;

  /// Creates a new [FirewallPolicyRuleSecureTagComputeBeta].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  FirewallPolicyRuleSecureTagComputeBeta({
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

  factory FirewallPolicyRuleSecureTagComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
