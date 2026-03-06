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
  const DeploymentData({
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
      adouPath: (() { final guardedValue = map['adouPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainFqdn: (() { final guardedValue = map['domainFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNetwork: (() { final guardedValue = map['hostNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureNetwork: (() { final guardedValue = map['infrastructureNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InfrastructureNetwork>(guardedValue, (value) => InfrastructureNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      namingPrefix: (() { final guardedValue = map['namingPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observability: (() { final guardedValue = map['observability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Observability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      optionalServices: (() { final guardedValue = map['optionalServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptionalServices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physicalNodes: (() { final guardedValue = map['physicalNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PhysicalNodes>(guardedValue, (value) => PhysicalNodes.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sdnIntegration: (() { final guardedValue = map['sdnIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SdnIntegration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EceDeploymentSecrets>(guardedValue, (value) => EceDeploymentSecrets.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretsLocation: (() { final guardedValue = map['secretsLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSecuritySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Storage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

