// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_definition.dart';
import 'bucket_definition.dart';
import 'git_repository_definition.dart';
import 'kustomization_definition.dart';

/// {@template pulumi_kubernetesconfiguration_flux_configuration_args_doc}
/// The set of arguments for FluxConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_flux_configuration_args_doc}
class FluxConfigurationArgs {
  /// Parameters to reconcile to the AzureBlob source kind type.
  final pulumi.Input<AzureBlobDefinition>? azureBlob;
  /// Parameters to reconcile to the Bucket source kind type.
  final pulumi.Input<BucketDefinition>? bucket;
  /// The name of the kubernetes cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  final pulumi.Input<String> clusterResourceName;
  /// The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  final pulumi.Input<String> clusterRp;
  /// Key-value pairs of protected configuration settings for the configuration
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;
  /// Name of the Flux Configuration.
  final pulumi.Input<String>? fluxConfigurationName;
  /// Parameters to reconcile to the GitRepository source kind type.
  final pulumi.Input<GitRepositoryDefinition>? gitRepository;
  /// Array of kustomizations used to reconcile the artifact pulled by the source type on the cluster.
  final pulumi.Input<Map<String, KustomizationDefinition>>? kustomizations;
  /// The namespace to which this configuration is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  final pulumi.Input<String>? namespace;
  /// Maximum duration to wait for flux configuration reconciliation. E.g PT1H, PT5M, P1D
  final pulumi.Input<String>? reconciliationWaitDuration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Scope at which the operator will be installed.
  final pulumi.Input<String>? scope;
  /// Source Kind to pull the configuration data from.
  final pulumi.Input<String>? sourceKind;
  /// Whether this configuration should suspend its reconciliation of its kustomizations and sources.
  final pulumi.Input<bool>? suspend;
  /// Whether flux configuration deployment should wait for cluster to reconcile the kustomizations.
  final pulumi.Input<bool>? waitForReconciliation;

  /// Creates a new [FluxConfigurationArgs].
  /// [azureBlob] Parameters to reconcile to the AzureBlob source kind type.
  /// [bucket] Parameters to reconcile to the Bucket source kind type.
  /// [clusterName] The name of the kubernetes cluster.
  /// [clusterResourceName] The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  /// [clusterRp] The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  /// [configurationProtectedSettings] Key-value pairs of protected configuration settings for the configuration
  /// [fluxConfigurationName] Name of the Flux Configuration.
  /// [gitRepository] Parameters to reconcile to the GitRepository source kind type.
  /// [kustomizations] Array of kustomizations used to reconcile the artifact pulled by the source type on the cluster.
  /// [namespace] The namespace to which this configuration is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  /// [reconciliationWaitDuration] Maximum duration to wait for flux configuration reconciliation. E.g PT1H, PT5M, P1D
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Scope at which the operator will be installed.
  /// [sourceKind] Source Kind to pull the configuration data from.
  /// [suspend] Whether this configuration should suspend its reconciliation of its kustomizations and sources.
  /// [waitForReconciliation] Whether flux configuration deployment should wait for cluster to reconcile the kustomizations.
  const FluxConfigurationArgs({
    this.azureBlob,
    this.bucket,
    required this.clusterName,
    required this.clusterResourceName,
    required this.clusterRp,
    this.configurationProtectedSettings,
    this.fluxConfigurationName,
    this.gitRepository,
    this.kustomizations,
    this.namespace,
    this.reconciliationWaitDuration,
    required this.resourceGroupName,
    this.scope,
    this.sourceKind,
    this.suspend,
    this.waitForReconciliation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlob': ?pulumi.Input.mapOptionalInputValue<AzureBlobDefinition, Map<String, dynamic>>(azureBlob, (value) => value.toMap()),
      'bucket': ?pulumi.Input.mapOptionalInputValue<BucketDefinition, Map<String, dynamic>>(bucket, (value) => value.toMap()),
      'clusterName': clusterName,
      'clusterResourceName': clusterResourceName,
      'clusterRp': clusterRp,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'fluxConfigurationName': ?fluxConfigurationName,
      'gitRepository': ?pulumi.Input.mapOptionalInputValue<GitRepositoryDefinition, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'kustomizations': ?pulumi.Input.mapOptionalInputValue<Map<String, KustomizationDefinition>, Map<String, Map<String, dynamic>>>(kustomizations, (value) => pulumi.Input.encodeMapValues<KustomizationDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': ?namespace,
      'reconciliationWaitDuration': ?reconciliationWaitDuration,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'sourceKind': ?sourceKind,
      'suspend': ?suspend,
      'waitForReconciliation': ?waitForReconciliation,
    };
  }

  factory FluxConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationArgs(
      azureBlob: (() { final guardedValue = map['azureBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureBlobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterResourceName: pulumi.Input.fromValue(map['clusterResourceName'] as String),
      clusterRp: pulumi.Input.fromValue(map['clusterRp'] as String),
      configurationProtectedSettings: (() { final guardedValue = map['configurationProtectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      fluxConfigurationName: (() { final guardedValue = map['fluxConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitRepository: (() { final guardedValue = map['gitRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitRepositoryDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kustomizations: (() { final guardedValue = map['kustomizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<KustomizationDefinition>(guardedValue, (value) => KustomizationDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconciliationWaitDuration: (() { final guardedValue = map['reconciliationWaitDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceKind: (() { final guardedValue = map['sourceKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suspend: (() { final guardedValue = map['suspend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      waitForReconciliation: (() { final guardedValue = map['waitForReconciliation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
