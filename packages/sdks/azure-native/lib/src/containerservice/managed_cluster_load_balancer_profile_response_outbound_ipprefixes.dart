// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Desired outbound IP Prefix resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes {
  /// A list of public IP prefix resources.
  final pulumi.Input<List<ResourceReferenceResponse>>? publicIPPrefixes;

  /// Creates a new [ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes].
  /// [publicIPPrefixes] A list of public IP prefix resources.
  const ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes({
    this.publicIPPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPPrefixes': ?pulumi.Input.mapOptionalInputValue<List<ResourceReferenceResponse>, List<Map<String, dynamic>>>(publicIPPrefixes, (value) => pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes(
      publicIPPrefixes: (() { final guardedValue = map['publicIPPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
