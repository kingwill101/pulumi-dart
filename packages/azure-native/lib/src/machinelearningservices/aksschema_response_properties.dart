// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aks_networking_configuration_response.dart';
import 'ssl_configuration_response.dart';
import 'system_service_response.dart';

/// AKS properties
class AKSSchemaResponseProperties {
  /// Number of agents
  final int? agentCount;
  /// Agent virtual machine size
  final String? agentVmSize;
  /// AKS networking configuration for vnet
  final AksNetworkingConfigurationResponse? aksNetworkingConfiguration;
  /// Cluster full qualified domain name
  final String? clusterFqdn;
  /// Intended usage of the cluster
  final String? clusterPurpose;
  /// Load Balancer Subnet
  final String? loadBalancerSubnet;
  /// Load Balancer Type
  final String? loadBalancerType;
  /// SSL configuration
  final SslConfigurationResponse? sslConfiguration;
  /// System services
  final List<SystemServiceResponse> systemServices;

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
      'aksNetworkingConfiguration': ?aksNetworkingConfiguration == null ? null : aksNetworkingConfiguration!.toMap(),
      'clusterFqdn': ?clusterFqdn,
      'clusterPurpose': ?clusterPurpose,
      'loadBalancerSubnet': ?loadBalancerSubnet,
      'loadBalancerType': ?loadBalancerType,
      'sslConfiguration': ?sslConfiguration == null ? null : sslConfiguration!.toMap(),
      'systemServices': pulumi.Input.encodeList<SystemServiceResponse, Map<String, dynamic>>(systemServices, (value) => value.toMap()),
    };
  }

  factory AKSSchemaResponseProperties.fromMap(Map<String, dynamic> map) {
    return AKSSchemaResponseProperties(
      agentCount: map['agentCount'] == null ? null : map['agentCount'] as int,
      agentVmSize: map['agentVmSize'] == null ? null : map['agentVmSize'] as String,
      aksNetworkingConfiguration: map['aksNetworkingConfiguration'] == null ? null : AksNetworkingConfigurationResponse.fromMap((map['aksNetworkingConfiguration'] as Map).cast<String, dynamic>()),
      clusterFqdn: map['clusterFqdn'] == null ? null : map['clusterFqdn'] as String,
      clusterPurpose: map['clusterPurpose'] == null ? null : map['clusterPurpose'] as String,
      loadBalancerSubnet: map['loadBalancerSubnet'] == null ? null : map['loadBalancerSubnet'] as String,
      loadBalancerType: map['loadBalancerType'] == null ? null : map['loadBalancerType'] as String,
      sslConfiguration: map['sslConfiguration'] == null ? null : SslConfigurationResponse.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>()),
      systemServices: pulumi.Input.decodeList<SystemServiceResponse>(map['systemServices'], (value) => SystemServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

