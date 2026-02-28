// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterUpgradePolicy {
  /// Specifies which upgrade policy to use.
  /// Possible values are: `SERIAL`, `CONCURRENT`.
  final String? policy;

  /// Creates a new [BareMetalClusterUpgradePolicy].
  /// [policy] Specifies which upgrade policy to use.
  BareMetalClusterUpgradePolicy({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    return map;
  }

  factory BareMetalClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterUpgradePolicy(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
