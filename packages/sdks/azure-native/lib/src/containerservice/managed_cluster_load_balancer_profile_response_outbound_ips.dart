// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Desired outbound IP resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileResponseOutboundIPs {
  /// A list of public IP resources.
  final pulumi.Input<List<ResourceReferenceResponse>>? publicIPs;

  /// Creates a new [ManagedClusterLoadBalancerProfileResponseOutboundIPs].
  /// [publicIPs] A list of public IP resources.
  const ManagedClusterLoadBalancerProfileResponseOutboundIPs({
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': ?pulumi.Input.mapOptionalInputValue<List<ResourceReferenceResponse>, List<Map<String, dynamic>>>(publicIPs, (value) => pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterLoadBalancerProfileResponseOutboundIPs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileResponseOutboundIPs(
      publicIPs: (() { final guardedValue = map['publicIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
