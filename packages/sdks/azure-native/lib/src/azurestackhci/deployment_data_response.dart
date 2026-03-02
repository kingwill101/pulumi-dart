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
  DeploymentDataResponse({
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
      adouPath: map['adouPath'] == null ? null : (map['adouPath']! as String).input(),
      cluster: map['cluster'] == null ? null : (DeploymentClusterResponse.fromMap((map['cluster']! as Map).cast<String, dynamic>())).input(),
      domainFqdn: map['domainFqdn'] == null ? null : (map['domainFqdn']! as String).input(),
      hostNetwork: map['hostNetwork'] == null ? null : (HostNetworkResponse.fromMap((map['hostNetwork']! as Map).cast<String, dynamic>())).input(),
      infrastructureNetwork: map['infrastructureNetwork'] == null ? null : (pulumi.Input.decodeList<InfrastructureNetworkResponse>(map['infrastructureNetwork']!, (value) => InfrastructureNetworkResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      namingPrefix: map['namingPrefix'] == null ? null : (map['namingPrefix']! as String).input(),
      observability: map['observability'] == null ? null : (ObservabilityResponse.fromMap((map['observability']! as Map).cast<String, dynamic>())).input(),
      optionalServices: map['optionalServices'] == null ? null : (OptionalServicesResponse.fromMap((map['optionalServices']! as Map).cast<String, dynamic>())).input(),
      physicalNodes: map['physicalNodes'] == null ? null : (pulumi.Input.decodeList<PhysicalNodesResponse>(map['physicalNodes']!, (value) => PhysicalNodesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sdnIntegration: map['sdnIntegration'] == null ? null : (SdnIntegrationResponse.fromMap((map['sdnIntegration']! as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<EceDeploymentSecretsResponse>(map['secrets']!, (value) => EceDeploymentSecretsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretsLocation: map['secretsLocation'] == null ? null : (map['secretsLocation']! as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (DeploymentSecuritySettingsResponse.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (StorageResponse.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

