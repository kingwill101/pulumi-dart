// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// Desired outbound IP resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileOutboundIPs {
  /// A list of public IP resources.
  final List<ResourceReference>? publicIPs;

  /// Creates a new [ManagedClusterLoadBalancerProfileOutboundIPs].
  /// [publicIPs] A list of public IP resources.
  ManagedClusterLoadBalancerProfileOutboundIPs({
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': ?publicIPs == null ? null : pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(publicIPs!, (value) => value.toMap()),
    };
  }

  factory ManagedClusterLoadBalancerProfileOutboundIPs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileOutboundIPs(
      publicIPs: map['publicIPs'] == null ? null : pulumi.Input.decodeList<ResourceReference>(map['publicIPs'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

