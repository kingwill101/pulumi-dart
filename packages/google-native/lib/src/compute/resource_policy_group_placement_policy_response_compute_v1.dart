// ignore_for_file: unused_element, unnecessary_cast

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyResponseComputeV1 {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int availabilityDomainCount;

  /// Specifies network collocation
  final String collocation;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int vmCount;

  /// Creates a new [ResourcePolicyGroupPlacementPolicyResponseComputeV1].
  /// [availabilityDomainCount] The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  /// [collocation] Specifies network collocation
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  ResourcePolicyGroupPlacementPolicyResponseComputeV1({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': availabilityDomainCount,
      'collocation': collocation,
      'vmCount': vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicyResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyGroupPlacementPolicyResponseComputeV1(
      availabilityDomainCount: map['availabilityDomainCount'] as int,
      collocation: map['collocation'] as String,
      vmCount: map['vmCount'] as int,
    );
  }
}
