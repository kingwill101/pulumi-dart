// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_load_balancer_profile_response_managed_outbound_ips.dart';
import 'managed_cluster_load_balancer_profile_response_outbound_ipprefixes.dart';
import 'managed_cluster_load_balancer_profile_response_outbound_ips.dart';
import 'resource_reference_response.dart';

/// Profile of the managed cluster load balancer.
class ManagedClusterLoadBalancerProfileResponse {
  /// The desired number of allocated SNAT ports per VM. Allowed values are in the range of 0 to 64000 (inclusive). The default value is 0 which results in Azure dynamically allocating ports.
  final pulumi.Input<int>? allocatedOutboundPorts;
  /// The type of the managed inbound Load Balancer BackendPool.
  final pulumi.Input<String>? backendPoolType;
  /// The effective outbound IP resources of the cluster load balancer.
  final pulumi.Input<List<ResourceReferenceResponse>> effectiveOutboundIPs;
  /// Enable multiple standard load balancers per AKS cluster or not.
  final pulumi.Input<bool>? enableMultipleStandardLoadBalancers;
  /// Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 30 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Desired managed outbound IPs for the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs>? managedOutboundIPs;
  /// Desired outbound IP Prefix resources for the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes>? outboundIPPrefixes;
  /// Desired outbound IP resources for the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfileResponseOutboundIPs>? outboundIPs;

  /// Creates a new [ManagedClusterLoadBalancerProfileResponse].
  /// [allocatedOutboundPorts] The desired number of allocated SNAT ports per VM. Allowed values are in the range of 0 to 64000 (inclusive). The default value is 0 which results in Azure dynamically allocating ports.
  /// [backendPoolType] The type of the managed inbound Load Balancer BackendPool.
  /// [effectiveOutboundIPs] The effective outbound IP resources of the cluster load balancer.
  /// [enableMultipleStandardLoadBalancers] Enable multiple standard load balancers per AKS cluster or not.
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 30 minutes.
  /// [managedOutboundIPs] Desired managed outbound IPs for the cluster load balancer.
  /// [outboundIPPrefixes] Desired outbound IP Prefix resources for the cluster load balancer.
  /// [outboundIPs] Desired outbound IP resources for the cluster load balancer.
  ManagedClusterLoadBalancerProfileResponse({
    this.allocatedOutboundPorts,
    this.backendPoolType,
    required this.effectiveOutboundIPs,
    this.enableMultipleStandardLoadBalancers,
    this.idleTimeoutInMinutes,
    this.managedOutboundIPs,
    this.outboundIPPrefixes,
    this.outboundIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedOutboundPorts': ?allocatedOutboundPorts,
      'backendPoolType': ?backendPoolType,
      'effectiveOutboundIPs': pulumi.Input.mapInputValue<List<ResourceReferenceResponse>, List<Map<String, dynamic>>>(effectiveOutboundIPs, (value) => pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableMultipleStandardLoadBalancers': ?enableMultipleStandardLoadBalancers,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIPs': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs, Map<String, dynamic>>(managedOutboundIPs, (value) => value.toMap()),
      'outboundIPPrefixes': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes, Map<String, dynamic>>(outboundIPPrefixes, (value) => value.toMap()),
      'outboundIPs': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfileResponseOutboundIPs, Map<String, dynamic>>(outboundIPs, (value) => value.toMap()),
    };
  }

  factory ManagedClusterLoadBalancerProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileResponse(
      allocatedOutboundPorts: map['allocatedOutboundPorts'] == null ? null : (map['allocatedOutboundPorts'] as int).input(),
      backendPoolType: map['backendPoolType'] == null ? null : (map['backendPoolType'] as String).input(),
      effectiveOutboundIPs: (pulumi.Input.decodeList<ResourceReferenceResponse>(map['effectiveOutboundIPs'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableMultipleStandardLoadBalancers: map['enableMultipleStandardLoadBalancers'] == null ? null : (map['enableMultipleStandardLoadBalancers'] as bool).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      managedOutboundIPs: map['managedOutboundIPs'] == null ? null : (ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs.fromMap((map['managedOutboundIPs'] as Map).cast<String, dynamic>())).input(),
      outboundIPPrefixes: map['outboundIPPrefixes'] == null ? null : (ManagedClusterLoadBalancerProfileResponseOutboundIPPrefixes.fromMap((map['outboundIPPrefixes'] as Map).cast<String, dynamic>())).input(),
      outboundIPs: map['outboundIPs'] == null ? null : (ManagedClusterLoadBalancerProfileResponseOutboundIPs.fromMap((map['outboundIPs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

