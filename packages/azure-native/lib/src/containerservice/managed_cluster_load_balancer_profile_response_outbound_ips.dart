// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Desired outbound IP resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileResponseOutboundIPs {
  /// A list of public IP resources.
  final List<ResourceReferenceResponse>? publicIPs;

  /// Creates a new [ManagedClusterLoadBalancerProfileResponseOutboundIPs].
  /// [publicIPs] A list of public IP resources.
  ManagedClusterLoadBalancerProfileResponseOutboundIPs({
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': ?publicIPs == null ? null : pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(publicIPs!, (value) => value.toMap()),
    };
  }

  factory ManagedClusterLoadBalancerProfileResponseOutboundIPs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileResponseOutboundIPs(
      publicIPs: map['publicIPs'] == null ? null : pulumi.Input.decodeList<ResourceReferenceResponse>(map['publicIPs'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

