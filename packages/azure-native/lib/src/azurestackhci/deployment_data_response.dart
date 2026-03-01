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
  final String? adouPath;
  /// Observability config to deploy AzureStackHCI Cluster.
  final DeploymentClusterResponse? cluster;
  /// FQDN to deploy cluster
  final String? domainFqdn;
  /// HostNetwork config to deploy AzureStackHCI Cluster.
  final HostNetworkResponse? hostNetwork;
  /// InfrastructureNetwork config to deploy AzureStackHCI Cluster.
  final List<InfrastructureNetworkResponse>? infrastructureNetwork;
  /// naming prefix to deploy cluster.
  final String? namingPrefix;
  /// Observability config to deploy AzureStackHCI Cluster.
  final ObservabilityResponse? observability;
  /// OptionalServices config to deploy AzureStackHCI Cluster.
  final OptionalServicesResponse? optionalServices;
  /// list of physical nodes config to deploy AzureStackHCI Cluster.
  final List<PhysicalNodesResponse>? physicalNodes;
  /// SDN Integration config to deploy AzureStackHCI Cluster.
  final SdnIntegrationResponse? sdnIntegration;
  /// secrets used for cloud deployment.
  final List<EceDeploymentSecretsResponse>? secrets;
  /// Azure keyvault endpoint. This property is deprecated from 2023-12-01-preview. Please use secrets property instead.
  final String? secretsLocation;
  /// SecuritySettings to deploy AzureStackHCI Cluster.
  final DeploymentSecuritySettingsResponse? securitySettings;
  /// Storage config to deploy AzureStackHCI Cluster.
  final StorageResponse? storage;

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
      'cluster': ?cluster == null ? null : cluster!.toMap(),
      'domainFqdn': ?domainFqdn,
      'hostNetwork': ?hostNetwork == null ? null : hostNetwork!.toMap(),
      'infrastructureNetwork': ?infrastructureNetwork == null ? null : pulumi.Input.encodeList<InfrastructureNetworkResponse, Map<String, dynamic>>(infrastructureNetwork!, (value) => value.toMap()),
      'namingPrefix': ?namingPrefix,
      'observability': ?observability == null ? null : observability!.toMap(),
      'optionalServices': ?optionalServices == null ? null : optionalServices!.toMap(),
      'physicalNodes': ?physicalNodes == null ? null : pulumi.Input.encodeList<PhysicalNodesResponse, Map<String, dynamic>>(physicalNodes!, (value) => value.toMap()),
      'sdnIntegration': ?sdnIntegration == null ? null : sdnIntegration!.toMap(),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<EceDeploymentSecretsResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'secretsLocation': ?secretsLocation,
      'securitySettings': ?securitySettings == null ? null : securitySettings!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory DeploymentDataResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentDataResponse(
      adouPath: map['adouPath'] == null ? null : map['adouPath'] as String,
      cluster: map['cluster'] == null ? null : DeploymentClusterResponse.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      domainFqdn: map['domainFqdn'] == null ? null : map['domainFqdn'] as String,
      hostNetwork: map['hostNetwork'] == null ? null : HostNetworkResponse.fromMap((map['hostNetwork'] as Map).cast<String, dynamic>()),
      infrastructureNetwork: map['infrastructureNetwork'] == null ? null : pulumi.Input.decodeList<InfrastructureNetworkResponse>(map['infrastructureNetwork'], (value) => InfrastructureNetworkResponse.fromMap((value as Map).cast<String, dynamic>())),
      namingPrefix: map['namingPrefix'] == null ? null : map['namingPrefix'] as String,
      observability: map['observability'] == null ? null : ObservabilityResponse.fromMap((map['observability'] as Map).cast<String, dynamic>()),
      optionalServices: map['optionalServices'] == null ? null : OptionalServicesResponse.fromMap((map['optionalServices'] as Map).cast<String, dynamic>()),
      physicalNodes: map['physicalNodes'] == null ? null : pulumi.Input.decodeList<PhysicalNodesResponse>(map['physicalNodes'], (value) => PhysicalNodesResponse.fromMap((value as Map).cast<String, dynamic>())),
      sdnIntegration: map['sdnIntegration'] == null ? null : SdnIntegrationResponse.fromMap((map['sdnIntegration'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<EceDeploymentSecretsResponse>(map['secrets'], (value) => EceDeploymentSecretsResponse.fromMap((value as Map).cast<String, dynamic>())),
      secretsLocation: map['secretsLocation'] == null ? null : map['secretsLocation'] as String,
      securitySettings: map['securitySettings'] == null ? null : DeploymentSecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : StorageResponse.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}

