// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyRuleSecureTagResponseComputeV1 {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String name;

  /// State of the secure tag, either `EFFECTIVE` or `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted or its network is deleted.
  final String state;

  FirewallPolicyRuleSecureTagResponseComputeV1({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory FirewallPolicyRuleSecureTagResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagResponseComputeV1(
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
