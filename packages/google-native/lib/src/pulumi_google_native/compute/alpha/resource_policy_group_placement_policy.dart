// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_collocation.dart';
import 'resource_policy_group_placement_policy_locality.dart';
import 'resource_policy_group_placement_policy_scope.dart';
import 'resource_policy_group_placement_policy_style.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicy {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int? availabilityDomainCount;

  /// Specifies network collocation
  final ResourcePolicyGroupPlacementPolicyCollocation? collocation;

  /// Specifies network locality
  final ResourcePolicyGroupPlacementPolicyLocality? locality;

  /// Specifies the number of max logical switches.
  final int? maxDistance;

  /// Scope specifies the availability domain to which the VMs should be spread.
  final ResourcePolicyGroupPlacementPolicyScope? scope;

  /// Specifies the number of slices in a multislice workload.
  final int? sliceCount;

  /// Specifies instances to hosts placement relationship
  final ResourcePolicyGroupPlacementPolicyStyle? style;

  /// Specifies the shape of the TPU slice
  final String? tpuTopology;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int? vmCount;

  ResourcePolicyGroupPlacementPolicy({
    this.availabilityDomainCount,
    this.collocation,
    this.locality,
    this.maxDistance,
    this.scope,
    this.sliceCount,
    this.style,
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
    final localityValue = locality;
    if (localityValue != null) {
      map['locality'] = localityValue.value;
    }
    final maxDistanceValue = maxDistance;
    if (maxDistanceValue != null) {
      map['maxDistance'] = maxDistanceValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue.value;
    }
    final sliceCountValue = sliceCount;
    if (sliceCountValue != null) {
      map['sliceCount'] = sliceCountValue;
    }
    final styleValue = style;
    if (styleValue != null) {
      map['style'] = styleValue.value;
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
      collocation: map['collocation'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyCollocation.fromValue(
              map['collocation'] as String),
      locality: map['locality'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyLocality.fromValue(
              map['locality'] as String),
      maxDistance:
          map['maxDistance'] == null ? null : map['maxDistance'] as int,
      scope: map['scope'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyScope.fromValue(
              map['scope'] as String),
      sliceCount: map['sliceCount'] == null ? null : map['sliceCount'] as int,
      style: map['style'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyStyle.fromValue(
              map['style'] as String),
      tpuTopology:
          map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as int,
    );
  }
}
