// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// Desired outbound IP Prefix resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileOutboundIPPrefixes {
  /// A list of public IP prefix resources.
  final pulumi.Input<List<ResourceReference>>? publicIPPrefixes;

  /// Creates a new [ManagedClusterLoadBalancerProfileOutboundIPPrefixes].
  /// [publicIPPrefixes] A list of public IP prefix resources.
  ManagedClusterLoadBalancerProfileOutboundIPPrefixes({
    this.publicIPPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPPrefixes': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(publicIPPrefixes, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterLoadBalancerProfileOutboundIPPrefixes.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileOutboundIPPrefixes(
      publicIPPrefixes: map['publicIPPrefixes'] == null ? null : (pulumi.Input.decodeList<ResourceReference>(map['publicIPPrefixes']!, (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

