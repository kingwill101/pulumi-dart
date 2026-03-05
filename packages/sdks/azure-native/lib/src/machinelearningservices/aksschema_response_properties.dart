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
      agentCount: (() { final guardedValue = map['agentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      agentVmSize: (() { final guardedValue = map['agentVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aksNetworkingConfiguration: (() { final guardedValue = map['aksNetworkingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AksNetworkingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterFqdn: (() { final guardedValue = map['clusterFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterPurpose: (() { final guardedValue = map['clusterPurpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerSubnet: (() { final guardedValue = map['loadBalancerSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConfiguration: (() { final guardedValue = map['sslConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemServices: pulumi.Input.fromValue(pulumi.Input.decodeList<SystemServiceResponse>(map['systemServices']!, (value) => SystemServiceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

