// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalClusterUpgradePolicy defines the cluster upgrade policy.
class BareMetalClusterUpgradePolicyResponse {
  /// Specifies which upgrade policy to use.
  final String policy;

  BareMetalClusterUpgradePolicyResponse({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    return map;
  }

  factory BareMetalClusterUpgradePolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterUpgradePolicyResponse(
      policy: map['policy'] as String,
    );
  }
}
