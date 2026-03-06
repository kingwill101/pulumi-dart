// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_cluster_response.dart';
import 'deployment_security_settings_response.dart';
import 'ece_deployment_secrets_response.dart';
import 'host_network_response.dart';
import 'infrastructure_network_response.dart';
import 'observability_response.dart';
import 'optional_services_response.dart';
import 'physical_nodes_response.dart';
import 'sdn_integration_response.dart';
import 'storage_response.dart';

/// The Deployment data of AzureStackHCI Cluster.
class DeploymentDataResponse {
  /// The path to the Active Directory Organizational Unit container object prepared for the deployment.
  final pulumi.Input<String>? adouPath;
  /// Observability config to deploy AzureStackHCI Cluster.
  final pulumi.Input<DeploymentClusterResponse>? cluster;
  /// FQDN to deploy cluster
  final pulumi.Input<String>? domainFqdn;
  /// HostNetwork config to deploy AzureStackHCI Cluster.
  final pulumi.Input<HostNetworkResponse>? hostNetwork;
  /// InfrastructureNetwork config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<InfrastructureNetworkResponse>>? infrastructureNetwork;
  /// naming prefix to deploy cluster.
  final pulumi.Input<String>? namingPrefix;
  /// Observability config to deploy AzureStackHCI Cluster.
  final pulumi.Input<ObservabilityResponse>? observability;
  /// OptionalServices config to deploy AzureStackHCI Cluster.
  final pulumi.Input<OptionalServicesResponse>? optionalServices;
  /// list of physical nodes config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<PhysicalNodesResponse>>? physicalNodes;
  /// SDN Integration config to deploy AzureStackHCI Cluster.
  final pulumi.Input<SdnIntegrationResponse>? sdnIntegration;
  /// secrets used for cloud deployment.
  final pulumi.Input<List<EceDeploymentSecretsResponse>>? secrets;
  /// Azure keyvault endpoint. This property is deprecated from 2023-12-01-preview. Please use secrets property instead.
  final pulumi.Input<String>? secretsLocation;
  /// SecuritySettings to deploy AzureStackHCI Cluster.
  final pulumi.Input<DeploymentSecuritySettingsResponse>? securitySettings;
  /// Storage config to deploy AzureStackHCI Cluster.
  final pulumi.Input<StorageResponse>? storage;

  /// Creates a new [DeploymentDataResponse].
  /// [adouPath] The path to the Active Directory Organizational Unit container object prepared for the deployment.
  /// [cluster] Observability config to deploy AzureStackHCI Cluster.
  /// [domainFqdn] FQDN to deploy cluster
  /// [hostNetwork] HostNetwork config to deploy AzureStackHCI Cluster.
  /// [infrastructureNetwork] InfrastructureNetwork config to deploy AzureStackHCI Cluster.
  /// [namingPrefix] naming prefix to deploy cluster.
  /// [observability] Observability config to deploy AzureStackHCI Cluster.
  /// [optionalServices] OptionalServices config to deploy AzureStackHCI Cluster.
  /// [physicalNodes] list of physical nodes config to deploy AzureStackHCI Cluster.
  /// [sdnIntegration] SDN Integration config to deploy AzureStackHCI Cluster.
  /// [secrets] secrets used for cloud deployment.
  /// [secretsLocation] Azure keyvault endpoint. This property is deprecated from 2023-12-01-preview. Please use secrets property instead.
  /// [securitySettings] SecuritySettings to deploy AzureStackHCI Cluster.
  /// [storage] Storage config to deploy AzureStackHCI Cluster.
  const DeploymentDataResponse({
    this.adouPath,
    this.cluster,
    this.domainFqdn,
    this.hostNetwork,
    this.infrastructureNetwork,
    this.namingPrefix,
    this.observability,
    this.optionalServices,
    this.physicalNodes,
    this.sdnIntegration,
    this.secrets,
    this.secretsLocation,
    this.securitySettings,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adouPath': ?adouPath,
      'cluster': ?pulumi.Input.mapOptionalInputValue<DeploymentClusterResponse, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'domainFqdn': ?domainFqdn,
      'hostNetwork': ?pulumi.Input.mapOptionalInputValue<HostNetworkResponse, Map<String, dynamic>>(hostNetwork, (value) => value.toMap()),
      'infrastructureNetwork': ?pulumi.Input.mapOptionalInputValue<List<InfrastructureNetworkResponse>, List<Map<String, dynamic>>>(infrastructureNetwork, (value) => pulumi.Input.encodeList<InfrastructureNetworkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namingPrefix': ?namingPrefix,
      'observability': ?pulumi.Input.mapOptionalInputValue<ObservabilityResponse, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'optionalServices': ?pulumi.Input.mapOptionalInputValue<OptionalServicesResponse, Map<String, dynamic>>(optionalServices, (value) => value.toMap()),
      'physicalNodes': ?pulumi.Input.mapOptionalInputValue<List<PhysicalNodesResponse>, List<Map<String, dynamic>>>(physicalNodes, (value) => pulumi.Input.encodeList<PhysicalNodesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sdnIntegration': ?pulumi.Input.mapOptionalInputValue<SdnIntegrationResponse, Map<String, dynamic>>(sdnIntegration, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<EceDeploymentSecretsResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<EceDeploymentSecretsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretsLocation': ?secretsLocation,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<DeploymentSecuritySettingsResponse, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<StorageResponse, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory DeploymentDataResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentDataResponse(
      adouPath: (() { final guardedValue = map['adouPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainFqdn: (() { final guardedValue = map['domainFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNetwork: (() { final guardedValue = map['hostNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostNetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureNetwork: (() { final guardedValue = map['infrastructureNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InfrastructureNetworkResponse>(guardedValue, (value) => InfrastructureNetworkResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      namingPrefix: (() { final guardedValue = map['namingPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      optionalServices: (() { final guardedValue = map['optionalServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptionalServicesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physicalNodes: (() { final guardedValue = map['physicalNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PhysicalNodesResponse>(guardedValue, (value) => PhysicalNodesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sdnIntegration: (() { final guardedValue = map['sdnIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SdnIntegrationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EceDeploymentSecretsResponse>(guardedValue, (value) => EceDeploymentSecretsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretsLocation: (() { final guardedValue = map['secretsLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSecuritySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

