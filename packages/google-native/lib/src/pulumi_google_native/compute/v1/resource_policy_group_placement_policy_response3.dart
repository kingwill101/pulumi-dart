// ignore_for_file: unused_element, unnecessary_cast

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyResponse3 {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int availabilityDomainCount;

  /// Specifies network collocation
  final String collocation;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int vmCount;

  ResourcePolicyGroupPlacementPolicyResponse3({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityDomainCount'] = availabilityDomainCount;
    map['collocation'] = collocation;
    map['vmCount'] = vmCount;
    return map;
  }

  factory ResourcePolicyGroupPlacementPolicyResponse3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyResponse3(
      availabilityDomainCount: map['availabilityDomainCount'] as int,
      collocation: map['collocation'] as String,
      vmCount: map['vmCount'] as int,
    );
  }
}
