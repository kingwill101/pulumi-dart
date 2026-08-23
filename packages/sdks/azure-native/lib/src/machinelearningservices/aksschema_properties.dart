// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aks_networking_configuration.dart';
import 'ssl_configuration.dart';

/// AKS properties
class AKSSchemaProperties {
  /// Number of agents
  final pulumi.Input<int>? agentCount;
  /// Agent virtual machine size
  final pulumi.Input<String>? agentVmSize;
  /// AKS networking configuration for vnet
  final pulumi.Input<AksNetworkingConfiguration>? aksNetworkingConfiguration;
  /// Cluster full qualified domain name
  final pulumi.Input<String>? clusterFqdn;
  /// Intended usage of the cluster
  final pulumi.Input<String>? clusterPurpose;
  /// Load Balancer Subnet
  final pulumi.Input<String>? loadBalancerSubnet;
  /// Load Balancer Type
  final pulumi.Input<String>? loadBalancerType;
  /// SSL configuration
  final pulumi.Input<SslConfiguration>? sslConfiguration;

  /// Creates a new [AKSSchemaProperties].
  /// [agentCount] Number of agents
  /// [agentVmSize] Agent virtual machine size
  /// [aksNetworkingConfiguration] AKS networking configuration for vnet
  /// [clusterFqdn] Cluster full qualified domain name
  /// [clusterPurpose] Intended usage of the cluster
  /// [loadBalancerSubnet] Load Balancer Subnet
  /// [loadBalancerType] Load Balancer Type
  /// [sslConfiguration] SSL configuration
  const AKSSchemaProperties({
    this.agentCount,
    this.agentVmSize,
    this.aksNetworkingConfiguration,
    this.clusterFqdn,
    this.clusterPurpose,
    this.loadBalancerSubnet,
    this.loadBalancerType,
    this.sslConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCount': ?agentCount,
      'agentVmSize': ?agentVmSize,
      'aksNetworkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AksNetworkingConfiguration, Map<String, dynamic>>(aksNetworkingConfiguration, (value) => value.toMap()),
      'clusterFqdn': ?clusterFqdn,
      'clusterPurpose': ?clusterPurpose,
      'loadBalancerSubnet': ?loadBalancerSubnet,
      'loadBalancerType': ?loadBalancerType,
      'sslConfiguration': ?pulumi.Input.mapOptionalInputValue<SslConfiguration, Map<String, dynamic>>(sslConfiguration, (value) => value.toMap()),
    };
  }

  factory AKSSchemaProperties.fromMap(Map<String, dynamic> map) {
    return AKSSchemaProperties(
      agentCount: (() { final guardedValue = map['agentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      agentVmSize: (() { final guardedValue = map['agentVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aksNetworkingConfiguration: (() { final guardedValue = map['aksNetworkingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AksNetworkingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterFqdn: (() { final guardedValue = map['clusterFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterPurpose: (() { final guardedValue = map['clusterPurpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerSubnet: (() { final guardedValue = map['loadBalancerSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConfiguration: (() { final guardedValue = map['sslConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
