// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_collocation2.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicy2 {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int? availabilityDomainCount;

  /// Specifies network collocation
  final ResourcePolicyGroupPlacementPolicyCollocation2? collocation;

  /// Specifies the number of max logical switches.
  final int? maxDistance;

  /// Specifies the number of slices in a multislice workload.
  final int? sliceCount;

  /// Specifies the shape of the TPU slice
  final String? tpuTopology;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int? vmCount;

  ResourcePolicyGroupPlacementPolicy2({
    this.availabilityDomainCount,
    this.collocation,
    this.maxDistance,
    this.sliceCount,
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
      map['collocation'] = collocationValue.value;
    }
    final maxDistanceValue = maxDistance;
    if (maxDistanceValue != null) {
      map['maxDistance'] = maxDistanceValue;
    }
    final sliceCountValue = sliceCount;
    if (sliceCountValue != null) {
      map['sliceCount'] = sliceCountValue;
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

  factory ResourcePolicyGroupPlacementPolicy2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicy2(
      availabilityDomainCount: map['availabilityDomainCount'] == null
          ? null
          : map['availabilityDomainCount'] as int,
      collocation: map['collocation'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyCollocation2.fromValue(
              map['collocation'] as String),
      maxDistance:
          map['maxDistance'] == null ? null : map['maxDistance'] as int,
      sliceCount: map['sliceCount'] == null ? null : map['sliceCount'] as int,
      tpuTopology:
          map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as int,
    );
  }
}
