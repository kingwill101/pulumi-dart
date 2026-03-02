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
  final pulumi.Input<String>? adouPath;
  /// Observability config to deploy AzureStackHCI Cluster.
  final pulumi.Input<DeploymentCluster>? cluster;
  /// FQDN to deploy cluster
  final pulumi.Input<String>? domainFqdn;
  /// HostNetwork config to deploy AzureStackHCI Cluster.
  final pulumi.Input<HostNetwork>? hostNetwork;
  /// InfrastructureNetwork config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<InfrastructureNetwork>>? infrastructureNetwork;
  /// naming prefix to deploy cluster.
  final pulumi.Input<String>? namingPrefix;
  /// Observability config to deploy AzureStackHCI Cluster.
  final pulumi.Input<Observability>? observability;
  /// OptionalServices config to deploy AzureStackHCI Cluster.
  final pulumi.Input<OptionalServices>? optionalServices;
  /// list of physical nodes config to deploy AzureStackHCI Cluster.
  final pulumi.Input<List<PhysicalNodes>>? physicalNodes;
  /// SDN Integration config to deploy AzureStackHCI Cluster.
  final pulumi.Input<SdnIntegration>? sdnIntegration;
  /// secrets used for cloud deployment.
  final pulumi.Input<List<EceDeploymentSecrets>>? secrets;
  /// Azure keyvault endpoint. This property is deprecated from 2023-12-01-preview. Please use secrets property instead.
  final pulumi.Input<String>? secretsLocation;
  /// SecuritySettings to deploy AzureStackHCI Cluster.
  final pulumi.Input<DeploymentSecuritySettings>? securitySettings;
  /// Storage config to deploy AzureStackHCI Cluster.
  final pulumi.Input<Storage>? storage;

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
      'cluster': ?pulumi.Input.mapOptionalInputValue<DeploymentCluster, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'domainFqdn': ?domainFqdn,
      'hostNetwork': ?pulumi.Input.mapOptionalInputValue<HostNetwork, Map<String, dynamic>>(hostNetwork, (value) => value.toMap()),
      'infrastructureNetwork': ?pulumi.Input.mapOptionalInputValue<List<InfrastructureNetwork>, List<Map<String, dynamic>>>(infrastructureNetwork, (value) => pulumi.Input.encodeList<InfrastructureNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namingPrefix': ?namingPrefix,
      'observability': ?pulumi.Input.mapOptionalInputValue<Observability, Map<String, dynamic>>(observability, (value) => value.toMap()),
      'optionalServices': ?pulumi.Input.mapOptionalInputValue<OptionalServices, Map<String, dynamic>>(optionalServices, (value) => value.toMap()),
      'physicalNodes': ?pulumi.Input.mapOptionalInputValue<List<PhysicalNodes>, List<Map<String, dynamic>>>(physicalNodes, (value) => pulumi.Input.encodeList<PhysicalNodes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sdnIntegration': ?pulumi.Input.mapOptionalInputValue<SdnIntegration, Map<String, dynamic>>(sdnIntegration, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<EceDeploymentSecrets>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<EceDeploymentSecrets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretsLocation': ?secretsLocation,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<DeploymentSecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<Storage, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory DeploymentData.fromMap(Map<String, dynamic> map) {
    return DeploymentData(
      adouPath: map['adouPath'] == null ? null : (map['adouPath']! as String).input(),
      cluster: map['cluster'] == null ? null : (DeploymentCluster.fromMap((map['cluster']! as Map).cast<String, dynamic>())).input(),
      domainFqdn: map['domainFqdn'] == null ? null : (map['domainFqdn']! as String).input(),
      hostNetwork: map['hostNetwork'] == null ? null : (HostNetwork.fromMap((map['hostNetwork']! as Map).cast<String, dynamic>())).input(),
      infrastructureNetwork: map['infrastructureNetwork'] == null ? null : (pulumi.Input.decodeList<InfrastructureNetwork>(map['infrastructureNetwork']!, (value) => InfrastructureNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      namingPrefix: map['namingPrefix'] == null ? null : (map['namingPrefix']! as String).input(),
      observability: map['observability'] == null ? null : (Observability.fromMap((map['observability']! as Map).cast<String, dynamic>())).input(),
      optionalServices: map['optionalServices'] == null ? null : (OptionalServices.fromMap((map['optionalServices']! as Map).cast<String, dynamic>())).input(),
      physicalNodes: map['physicalNodes'] == null ? null : (pulumi.Input.decodeList<PhysicalNodes>(map['physicalNodes']!, (value) => PhysicalNodes.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sdnIntegration: map['sdnIntegration'] == null ? null : (SdnIntegration.fromMap((map['sdnIntegration']! as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<EceDeploymentSecrets>(map['secrets']!, (value) => EceDeploymentSecrets.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretsLocation: map['secretsLocation'] == null ? null : (map['secretsLocation']! as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (DeploymentSecuritySettings.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (Storage.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

