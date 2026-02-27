// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyGroupPlacementPolicy {
  /// The number of availability domains instances will be spread across. If two instances are in different
  /// availability domain, they will not be put in the same low latency network
  final int? availabilityDomainCount;

  /// Collocation specifies whether to place VMs inside the same availability domain on the same low-latency network.
  /// Specify `COLLOCATED` to enable collocation. Can only be specified with `vm_count`. If compute instances are created
  /// with a COLLOCATED policy, then exactly `vm_count` instances must be created at the same time with the resource policy
  /// attached.
  /// Possible values are: `COLLOCATED`.
  final String? collocation;

  /// Specifies the shape of the GPU slice, in slice based GPU families eg. A4X.
  final String? gpuTopology;

  /// Specifies the number of max logical switches.
  final int? maxDistance;

  /// Specifies the shape of the TPU slice.
  final String? tpuTopology;

  /// Number of VMs in this placement group. Google does not recommend that you use this field
  /// unless you use a compact policy and you want your policy to work only if it contains this
  /// exact number of VMs.
  final int? vmCount;

  ResourcePolicyGroupPlacementPolicy({
    this.availabilityDomainCount,
    this.collocation,
    this.gpuTopology,
    this.maxDistance,
    this.tpuTopology,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityDomainCountValue = availabilityDomainCount;
    if (availabilityDomainCountValue != null) {
      map['availabilityDomainCount'] = availabilityDomainCountValue;
    }
    final collocationValue = collocation;
    if (collocationValue != null) {
      map['collocation'] = collocationValue;
    }
    final gpuTopologyValue = gpuTopology;
    if (gpuTopologyValue != null) {
      map['gpuTopology'] = gpuTopologyValue;
    }
    final maxDistanceValue = maxDistance;
    if (maxDistanceValue != null) {
      map['maxDistance'] = maxDistanceValue;
    }
    final tpuTopologyValue = tpuTopology;
    if (tpuTopologyValue != null) {
      map['tpuTopology'] = tpuTopologyValue;
    }
    final vmCountValue = vmCount;
    if (vmCountValue != null) {
      map['vmCount'] = vmCountValue;
    }
    return map;
  }

  factory ResourcePolicyGroupPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicy(
      availabilityDomainCount: map['availabilityDomainCount'] == null
          ? null
          : map['availabilityDomainCount'] as int,
      collocation:
          map['collocation'] == null ? null : map['collocation'] as String,
      gpuTopology:
          map['gpuTopology'] == null ? null : map['gpuTopology'] as String,
      maxDistance:
          map['maxDistance'] == null ? null : map['maxDistance'] as int,
      tpuTopology:
          map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as int,
    );
  }
}
