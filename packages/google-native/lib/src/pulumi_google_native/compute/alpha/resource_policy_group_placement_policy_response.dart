// ignore_for_file: unused_element, unnecessary_cast

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyResponse {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int availabilityDomainCount;

  /// Specifies network collocation
  final String collocation;

  /// Specifies network locality
  final String locality;

  /// Specifies the number of max logical switches.
  final int maxDistance;

  /// Scope specifies the availability domain to which the VMs should be spread.
  final String scope;

  /// Specifies the number of slices in a multislice workload.
  final int sliceCount;

  /// Specifies instances to hosts placement relationship
  final String style;

  /// Specifies the shape of the TPU slice
  final String tpuTopology;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int vmCount;

  ResourcePolicyGroupPlacementPolicyResponse({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.locality,
    required this.maxDistance,
    required this.scope,
    required this.sliceCount,
    required this.style,
    required this.tpuTopology,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityDomainCount'] = availabilityDomainCount;
    map['collocation'] = collocation;
    map['locality'] = locality;
    map['maxDistance'] = maxDistance;
    map['scope'] = scope;
    map['sliceCount'] = sliceCount;
    map['style'] = style;
    map['tpuTopology'] = tpuTopology;
    map['vmCount'] = vmCount;
    return map;
  }

  factory ResourcePolicyGroupPlacementPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyResponse(
      availabilityDomainCount: map['availabilityDomainCount'] as int,
      collocation: map['collocation'] as String,
      locality: map['locality'] as String,
      maxDistance: map['maxDistance'] as int,
      scope: map['scope'] as String,
      sliceCount: map['sliceCount'] as int,
      style: map['style'] as String,
      tpuTopology: map['tpuTopology'] as String,
      vmCount: map['vmCount'] as int,
    );
  }
}
