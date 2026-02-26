// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_collocation3.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicy3 {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int? availabilityDomainCount;

  /// Specifies network collocation
  final ResourcePolicyGroupPlacementPolicyCollocation3? collocation;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int? vmCount;

  ResourcePolicyGroupPlacementPolicy3({
    this.availabilityDomainCount,
    this.collocation,
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
    final vmCountValue = vmCount;
    if (vmCountValue != null) {
      map['vmCount'] = vmCountValue;
    }
    return map;
  }

  factory ResourcePolicyGroupPlacementPolicy3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicy3(
      availabilityDomainCount: map['availabilityDomainCount'] == null
          ? null
          : map['availabilityDomainCount'] as int,
      collocation: map['collocation'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyCollocation3.fromValue(
              map['collocation'] as String),
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as int,
    );
  }
}
