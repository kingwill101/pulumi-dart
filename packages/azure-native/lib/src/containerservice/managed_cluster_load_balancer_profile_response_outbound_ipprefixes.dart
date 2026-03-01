// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Desired outbound IP Prefix resources for the cluster load balancer.
class ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes {
  /// A list of public IP prefix resources.
  final List<ResourceReferenceResponse>? publicIPPrefixes;

  /// Creates a new [ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes].
  /// [publicIPPrefixes] A list of public IP prefix resources.
  ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes({
    this.publicIPPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPPrefixes': ?publicIPPrefixes == null ? null : pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(publicIPPrefixes!, (value) => value.toMap()),
    };
  }

  factory ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes(
      publicIPPrefixes: map['publicIPPrefixes'] == null ? null : pulumi.Input.decodeList<ResourceReferenceResponse>(map['publicIPPrefixes'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

