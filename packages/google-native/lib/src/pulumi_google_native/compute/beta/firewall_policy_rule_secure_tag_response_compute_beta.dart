// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyRuleSecureTagResponseComputeBeta {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String name;

  /// State of the secure tag, either `EFFECTIVE` or `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted or its network is deleted.
  final String state;

  FirewallPolicyRuleSecureTagResponseComputeBeta({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory FirewallPolicyRuleSecureTagResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagResponseComputeBeta(
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
