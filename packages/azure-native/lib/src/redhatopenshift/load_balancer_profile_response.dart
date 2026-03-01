// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'effective_outbound_ipresponse.dart';
import 'managed_outbound_ips_response.dart';

/// LoadBalancerProfile represents the profile of the cluster public load balancer.
class LoadBalancerProfileResponse {
  /// The list of effective outbound IP addresses of the public load balancer.
  final List<EffectiveOutboundIPResponse> effectiveOutboundIps;
  /// The desired managed outbound IPs for the cluster public load balancer.
  final ManagedOutboundIPsResponse? managedOutboundIps;

  /// Creates a new [LoadBalancerProfileResponse].
  /// [effectiveOutboundIps] The list of effective outbound IP addresses of the public load balancer.
  /// [managedOutboundIps] The desired managed outbound IPs for the cluster public load balancer.
  LoadBalancerProfileResponse({
    required this.effectiveOutboundIps,
    this.managedOutboundIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveOutboundIps': pulumi.Input.encodeList<EffectiveOutboundIPResponse, Map<String, dynamic>>(effectiveOutboundIps, (value) => value.toMap()),
      'managedOutboundIps': ?managedOutboundIps == null ? null : managedOutboundIps!.toMap(),
    };
  }

  factory LoadBalancerProfileResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProfileResponse(
      effectiveOutboundIps: pulumi.Input.decodeList<EffectiveOutboundIPResponse>(map['effectiveOutboundIps'], (value) => EffectiveOutboundIPResponse.fromMap((value as Map).cast<String, dynamic>())),
      managedOutboundIps: map['managedOutboundIps'] == null ? null : ManagedOutboundIPsResponse.fromMap((map['managedOutboundIps'] as Map).cast<String, dynamic>()),
    );
  }
}

