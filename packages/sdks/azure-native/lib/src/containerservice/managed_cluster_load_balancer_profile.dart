// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_load_balancer_profile_managed_outbound_ips.dart';
import 'managed_cluster_load_balancer_profile_outbound_ipprefixes.dart';
import 'managed_cluster_load_balancer_profile_outbound_ips.dart';

/// Profile of the managed cluster load balancer.
class ManagedClusterLoadBalancerProfile {
  /// The desired number of allocated SNAT ports per VM. Allowed values are in the range of 0 to 64000 (inclusive). The default value is 0 which results in Azure dynamically allocating ports.
  final pulumi.Input<int>? allocatedOutboundPorts;
  /// The type of the managed inbound Load Balancer BackendPool.
  final pulumi.Input<String>? backendPoolType;
  /// Enable multiple standard load balancers per AKS cluster or not.
  final pulumi.Input<bool>? enableMultipleStandardLoadBalancers;
  /// Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 30 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Desired managed outbound IPs for the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfileManagedOutboundIPs>? managedOutboundIPs;
  /// Desired outbound IP Prefix resources for the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfileOutboundIPPrefixes>? outboundIPPrefixes;
  /// Desired outbound IP resources for the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfileOutboundIPs>? outboundIPs;

  /// Creates a new [ManagedClusterLoadBalancerProfile].
  /// [allocatedOutboundPorts] The desired number of allocated SNAT ports per VM. Allowed values are in the range of 0 to 64000 (inclusive). The default value is 0 which results in Azure dynamically allocating ports.
  /// [backendPoolType] The type of the managed inbound Load Balancer BackendPool.
  /// [enableMultipleStandardLoadBalancers] Enable multiple standard load balancers per AKS cluster or not.
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 30 minutes.
  /// [managedOutboundIPs] Desired managed outbound IPs for the cluster load balancer.
  /// [outboundIPPrefixes] Desired outbound IP Prefix resources for the cluster load balancer.
  /// [outboundIPs] Desired outbound IP resources for the cluster load balancer.
  const ManagedClusterLoadBalancerProfile({
    this.allocatedOutboundPorts,
    this.backendPoolType,
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
      'enableMultipleStandardLoadBalancers': ?enableMultipleStandardLoadBalancers,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIPs': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfileManagedOutboundIPs, Map<String, dynamic>>(managedOutboundIPs, (value) => value.toMap()),
      'outboundIPPrefixes': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfileOutboundIPPrefixes, Map<String, dynamic>>(outboundIPPrefixes, (value) => value.toMap()),
      'outboundIPs': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfileOutboundIPs, Map<String, dynamic>>(outboundIPs, (value) => value.toMap()),
    };
  }

  factory ManagedClusterLoadBalancerProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfile(
      allocatedOutboundPorts: (() { final guardedValue = map['allocatedOutboundPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backendPoolType: (() { final guardedValue = map['backendPoolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableMultipleStandardLoadBalancers: (() { final guardedValue = map['enableMultipleStandardLoadBalancers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      managedOutboundIPs: (() { final guardedValue = map['managedOutboundIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterLoadBalancerProfileManagedOutboundIPs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundIPPrefixes: (() { final guardedValue = map['outboundIPPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterLoadBalancerProfileOutboundIPPrefixes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundIPs: (() { final guardedValue = map['outboundIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterLoadBalancerProfileOutboundIPs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

