// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aks_networking_configuration_response.dart';
import 'ssl_configuration_response.dart';
import 'system_service_response.dart';

/// AKS properties
class AKSSchemaResponseProperties {
  /// Number of agents
  final pulumi.Input<int>? agentCount;
  /// Agent virtual machine size
  final pulumi.Input<String>? agentVmSize;
  /// AKS networking configuration for vnet
  final pulumi.Input<AksNetworkingConfigurationResponse>? aksNetworkingConfiguration;
  /// Cluster full qualified domain name
  final pulumi.Input<String>? clusterFqdn;
  /// Intended usage of the cluster
  final pulumi.Input<String>? clusterPurpose;
  /// Load Balancer Subnet
  final pulumi.Input<String>? loadBalancerSubnet;
  /// Load Balancer Type
  final pulumi.Input<String>? loadBalancerType;
  /// SSL configuration
  final pulumi.Input<SslConfigurationResponse>? sslConfiguration;
  /// System services
  final pulumi.Input<List<SystemServiceResponse>> systemServices;

  /// Creates a new [AKSSchemaResponseProperties].
  /// [agentCount] Number of agents
  /// [agentVmSize] Agent virtual machine size
  /// [aksNetworkingConfiguration] AKS networking configuration for vnet
  /// [clusterFqdn] Cluster full qualified domain name
  /// [clusterPurpose] Intended usage of the cluster
  /// [loadBalancerSubnet] Load Balancer Subnet
  /// [loadBalancerType] Load Balancer Type
  /// [sslConfiguration] SSL configuration
  /// [systemServices] System services
  AKSSchemaResponseProperties({
    this.agentCount,
    this.agentVmSize,
    this.aksNetworkingConfiguration,
    this.clusterFqdn,
    this.clusterPurpose,
    this.loadBalancerSubnet,
    this.loadBalancerType,
    this.sslConfiguration,
    required this.systemServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCount': ?agentCount,
      'agentVmSize': ?agentVmSize,
      'aksNetworkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AksNetworkingConfigurationResponse, Map<String, dynamic>>(aksNetworkingConfiguration, (value) => value.toMap()),
      'clusterFqdn': ?clusterFqdn,
      'clusterPurpose': ?clusterPurpose,
      'loadBalancerSubnet': ?loadBalancerSubnet,
      'loadBalancerType': ?loadBalancerType,
      'sslConfiguration': ?pulumi.Input.mapOptionalInputValue<SslConfigurationResponse, Map<String, dynamic>>(sslConfiguration, (value) => value.toMap()),
      'systemServices': pulumi.Input.mapInputValue<List<SystemServiceResponse>, List<Map<String, dynamic>>>(systemServices, (value) => pulumi.Input.encodeList<SystemServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AKSSchemaResponseProperties.fromMap(Map<String, dynamic> map) {
    return AKSSchemaResponseProperties(
      agentCount: map['agentCount'] == null ? null : (map['agentCount'] as int).input(),
      agentVmSize: map['agentVmSize'] == null ? null : (map['agentVmSize'] as String).input(),
      aksNetworkingConfiguration: map['aksNetworkingConfiguration'] == null ? null : (AksNetworkingConfigurationResponse.fromMap((map['aksNetworkingConfiguration'] as Map).cast<String, dynamic>())).input(),
      clusterFqdn: map['clusterFqdn'] == null ? null : (map['clusterFqdn'] as String).input(),
      clusterPurpose: map['clusterPurpose'] == null ? null : (map['clusterPurpose'] as String).input(),
      loadBalancerSubnet: map['loadBalancerSubnet'] == null ? null : (map['loadBalancerSubnet'] as String).input(),
      loadBalancerType: map['loadBalancerType'] == null ? null : (map['loadBalancerType'] as String).input(),
      sslConfiguration: map['sslConfiguration'] == null ? null : (SslConfigurationResponse.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>())).input(),
      systemServices: (pulumi.Input.decodeList<SystemServiceResponse>(map['systemServices'], (value) => SystemServiceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

