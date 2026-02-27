// ignore_for_file: unused_element, unnecessary_cast

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyResponseComputeBeta {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int availabilityDomainCount;

  /// Specifies network collocation
  final String collocation;

  /// Specifies the number of max logical switches.
  final int maxDistance;

  /// Specifies the number of slices in a multislice workload.
  final int sliceCount;

  /// Specifies the shape of the TPU slice
  final String tpuTopology;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int vmCount;

  ResourcePolicyGroupPlacementPolicyResponseComputeBeta({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.maxDistance,
    required this.sliceCount,
    required this.tpuTopology,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityDomainCount'] = availabilityDomainCount;
    map['collocation'] = collocation;
    map['maxDistance'] = maxDistance;
    map['sliceCount'] = sliceCount;
    map['tpuTopology'] = tpuTopology;
    map['vmCount'] = vmCount;
    return map;
  }

  factory ResourcePolicyGroupPlacementPolicyResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyResponseComputeBeta(
      availabilityDomainCount: map['availabilityDomainCount'] as int,
      collocation: map['collocation'] as String,
      maxDistance: map['maxDistance'] as int,
      sliceCount: map['sliceCount'] as int,
      tpuTopology: map['tpuTopology'] as String,
      vmCount: map['vmCount'] as int,
    );
  }
}
