// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIpAllocationPolicyPodCidrOverprovisionConfig {
  final bool disabled;

  GetClusterIpAllocationPolicyPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}
