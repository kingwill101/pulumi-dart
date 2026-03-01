// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_cluster.dart';
import 'deployment_security_settings.dart';
import 'ece_deployment_secrets.dart';
import 'host_network.dart';
import 'infrastructure_network.dart';
import 'observability.dart';
import 'optional_services.dart';
import 'physical_nodes.dart';
import 'sdn_integration.dart';
import 'storage.dart';

/// The Deployment data of AzureStackHCI Cluster.
class DeploymentData {
  /// The path to the Active Directory Organizational Unit container object prepared for the deployment.
  final String? adouPath;
  /// Observability config to deploy AzureStackHCI Cluster.
  final DeploymentCluster? cluster;
  /// FQDN to deploy cluster
  final String? domainFqdn;
  /// HostNetwork config to deploy AzureStackHCI Cluster.
  final HostNetwork? hostNetwork;
  /// InfrastructureNetwork config to deploy AzureStackHCI Cluster.
  final List<InfrastructureNetwork>? infrastructureNetwork;
  /// naming prefix to deploy cluster.
  final String? namingPrefix;
  /// Observability config to deploy AzureStackHCI Cluster.
  final Observability? observability;
  /// OptionalServices config to deploy AzureStackHCI Cluster.
  final OptionalServices? optionalServices;
  /// list of physical nodes config to deploy AzureStackHCI Cluster.
  final List<PhysicalNodes>? physicalNodes;
  /// SDN Integration config to deploy AzureStackHCI Cluster.
  final SdnIntegration? sdnIntegration;
  /// secrets used for cloud deployment.
  final List<EceDeploymentSecrets>? secrets;
  /// Azure keyvault endpoint. This property is deprecated from 2023-12-01-preview. Please use secrets property instead.
  final String? secretsLocation;
  /// SecuritySettings to deploy AzureStackHCI Cluster.
  final DeploymentSecuritySettings? securitySettings;
  /// Storage config to deploy AzureStackHCI Cluster.
  final Storage? storage;

  /// Creates a new [DeploymentData].
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
  DeploymentData({
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
      'infrastructureNetwork': ?infrastructureNetwork == null ? null : pulumi.Input.encodeList<InfrastructureNetwork, Map<String, dynamic>>(infrastructureNetwork!, (value) => value.toMap()),
      'namingPrefix': ?namingPrefix,
      'observability': ?observability == null ? null : observability!.toMap(),
      'optionalServices': ?optionalServices == null ? null : optionalServices!.toMap(),
      'physicalNodes': ?physicalNodes == null ? null : pulumi.Input.encodeList<PhysicalNodes, Map<String, dynamic>>(physicalNodes!, (value) => value.toMap()),
      'sdnIntegration': ?sdnIntegration == null ? null : sdnIntegration!.toMap(),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<EceDeploymentSecrets, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'secretsLocation': ?secretsLocation,
      'securitySettings': ?securitySettings == null ? null : securitySettings!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory DeploymentData.fromMap(Map<String, dynamic> map) {
    return DeploymentData(
      adouPath: map['adouPath'] == null ? null : map['adouPath'] as String,
      cluster: map['cluster'] == null ? null : DeploymentCluster.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      domainFqdn: map['domainFqdn'] == null ? null : map['domainFqdn'] as String,
      hostNetwork: map['hostNetwork'] == null ? null : HostNetwork.fromMap((map['hostNetwork'] as Map).cast<String, dynamic>()),
      infrastructureNetwork: map['infrastructureNetwork'] == null ? null : pulumi.Input.decodeList<InfrastructureNetwork>(map['infrastructureNetwork'], (value) => InfrastructureNetwork.fromMap((value as Map).cast<String, dynamic>())),
      namingPrefix: map['namingPrefix'] == null ? null : map['namingPrefix'] as String,
      observability: map['observability'] == null ? null : Observability.fromMap((map['observability'] as Map).cast<String, dynamic>()),
      optionalServices: map['optionalServices'] == null ? null : OptionalServices.fromMap((map['optionalServices'] as Map).cast<String, dynamic>()),
      physicalNodes: map['physicalNodes'] == null ? null : pulumi.Input.decodeList<PhysicalNodes>(map['physicalNodes'], (value) => PhysicalNodes.fromMap((value as Map).cast<String, dynamic>())),
      sdnIntegration: map['sdnIntegration'] == null ? null : SdnIntegration.fromMap((map['sdnIntegration'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<EceDeploymentSecrets>(map['secrets'], (value) => EceDeploymentSecrets.fromMap((value as Map).cast<String, dynamic>())),
      secretsLocation: map['secretsLocation'] == null ? null : map['secretsLocation'] as String,
      securitySettings: map['securitySettings'] == null ? null : DeploymentSecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : Storage.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}

