// ignore_for_file: unused_element, unnecessary_cast

import 'aks_networking_configuration.dart';
import 'ssl_configuration.dart';

/// AKS properties
class AKSSchemaProperties {
  /// Number of agents
  final int? agentCount;
  /// Agent virtual machine size
  final String? agentVmSize;
  /// AKS networking configuration for vnet
  final AksNetworkingConfiguration? aksNetworkingConfiguration;
  /// Cluster full qualified domain name
  final String? clusterFqdn;
  /// Intended usage of the cluster
  final String? clusterPurpose;
  /// Load Balancer Subnet
  final String? loadBalancerSubnet;
  /// Load Balancer Type
  final String? loadBalancerType;
  /// SSL configuration
  final SslConfiguration? sslConfiguration;

  /// Creates a new [AKSSchemaProperties].
  /// [agentCount] Number of agents
  /// [agentVmSize] Agent virtual machine size
  /// [aksNetworkingConfiguration] AKS networking configuration for vnet
  /// [clusterFqdn] Cluster full qualified domain name
  /// [clusterPurpose] Intended usage of the cluster
  /// [loadBalancerSubnet] Load Balancer Subnet
  /// [loadBalancerType] Load Balancer Type
  /// [sslConfiguration] SSL configuration
  AKSSchemaProperties({
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
      'aksNetworkingConfiguration': ?aksNetworkingConfiguration == null ? null : aksNetworkingConfiguration!.toMap(),
      'clusterFqdn': ?clusterFqdn,
      'clusterPurpose': ?clusterPurpose,
      'loadBalancerSubnet': ?loadBalancerSubnet,
      'loadBalancerType': ?loadBalancerType,
      'sslConfiguration': ?sslConfiguration == null ? null : sslConfiguration!.toMap(),
    };
  }

  factory AKSSchemaProperties.fromMap(Map<String, dynamic> map) {
    return AKSSchemaProperties(
      agentCount: map['agentCount'] == null ? null : map['agentCount'] as int,
      agentVmSize: map['agentVmSize'] == null ? null : map['agentVmSize'] as String,
      aksNetworkingConfiguration: map['aksNetworkingConfiguration'] == null ? null : AksNetworkingConfiguration.fromMap((map['aksNetworkingConfiguration'] as Map).cast<String, dynamic>()),
      clusterFqdn: map['clusterFqdn'] == null ? null : map['clusterFqdn'] as String,
      clusterPurpose: map['clusterPurpose'] == null ? null : map['clusterPurpose'] as String,
      loadBalancerSubnet: map['loadBalancerSubnet'] == null ? null : map['loadBalancerSubnet'] as String,
      loadBalancerType: map['loadBalancerType'] == null ? null : map['loadBalancerType'] as String,
      sslConfiguration: map['sslConfiguration'] == null ? null : SslConfiguration.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

