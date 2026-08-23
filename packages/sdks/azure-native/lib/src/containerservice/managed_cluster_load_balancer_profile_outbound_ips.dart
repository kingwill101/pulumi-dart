// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// Desired outbound IP resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileOutboundIPs {
  /// A list of public IP resources.
  final pulumi.Input<List<ResourceReference>>? publicIPs;

  /// Creates a new [ManagedClusterLoadBalancerProfileOutboundIPs].
  /// [publicIPs] A list of public IP resources.
  const ManagedClusterLoadBalancerProfileOutboundIPs({
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(publicIPs, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterLoadBalancerProfileOutboundIPs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileOutboundIPs(
      publicIPs: (() { final guardedValue = map['publicIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReference>(guardedValue, (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
