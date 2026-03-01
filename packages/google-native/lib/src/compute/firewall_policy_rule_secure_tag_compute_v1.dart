// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyRuleSecureTagComputeV1 {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;

  /// Creates a new [FirewallPolicyRuleSecureTagComputeV1].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  FirewallPolicyRuleSecureTagComputeV1({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory FirewallPolicyRuleSecureTagComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyRuleSecureTagComputeV1(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
