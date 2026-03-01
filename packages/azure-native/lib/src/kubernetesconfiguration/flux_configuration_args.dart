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
  FluxConfigurationArgs({
    AzureBlobDefinition? azureBlob,
    BucketDefinition? bucket,
    required String clusterName,
    required String clusterResourceName,
    required String clusterRp,
    Map<String, String>? configurationProtectedSettings,
    String? fluxConfigurationName,
    GitRepositoryDefinition? gitRepository,
    Map<String, KustomizationDefinition>? kustomizations,
    String? namespace,
    String? reconciliationWaitDuration,
    required String resourceGroupName,
    String? scope,
    String? sourceKind,
    bool? suspend,
    bool? waitForReconciliation,
  }) :
      azureBlob = pulumi.Input.asOptionalInput<AzureBlobDefinition>(azureBlob),
      bucket = pulumi.Input.asOptionalInput<BucketDefinition>(bucket),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceName = pulumi.Input.asInput<String>(clusterResourceName),
      clusterRp = pulumi.Input.asInput<String>(clusterRp),
      configurationProtectedSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationProtectedSettings),
      fluxConfigurationName = pulumi.Input.asOptionalInput<String>(fluxConfigurationName),
      gitRepository = pulumi.Input.asOptionalInput<GitRepositoryDefinition>(gitRepository),
      kustomizations = pulumi.Input.asOptionalInput<Map<String, KustomizationDefinition>>(kustomizations),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      reconciliationWaitDuration = pulumi.Input.asOptionalInput<String>(reconciliationWaitDuration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sourceKind = pulumi.Input.asOptionalInput<String>(sourceKind),
      suspend = pulumi.Input.asOptionalInput<bool>(suspend),
      waitForReconciliation = pulumi.Input.asOptionalInput<bool>(waitForReconciliation);

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
      azureBlob: map['azureBlob'] == null ? null : AzureBlobDefinition.fromMap((map['azureBlob'] as Map).cast<String, dynamic>()),
      bucket: map['bucket'] == null ? null : BucketDefinition.fromMap((map['bucket'] as Map).cast<String, dynamic>()),
      clusterName: map['clusterName'] as String,
      clusterResourceName: map['clusterResourceName'] as String,
      clusterRp: map['clusterRp'] as String,
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : (map['configurationProtectedSettings'] as Map).cast<String, String>(),
      fluxConfigurationName: map['fluxConfigurationName'] == null ? null : map['fluxConfigurationName'] as String,
      gitRepository: map['gitRepository'] == null ? null : GitRepositoryDefinition.fromMap((map['gitRepository'] as Map).cast<String, dynamic>()),
      kustomizations: map['kustomizations'] == null ? null : pulumi.Input.decodeMapValues<KustomizationDefinition>(map['kustomizations'], (value) => KustomizationDefinition.fromMap((value as Map).cast<String, dynamic>())),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      reconciliationWaitDuration: map['reconciliationWaitDuration'] == null ? null : map['reconciliationWaitDuration'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sourceKind: map['sourceKind'] == null ? null : map['sourceKind'] as String,
      suspend: map['suspend'] == null ? null : map['suspend'] as bool,
      waitForReconciliation: map['waitForReconciliation'] == null ? null : map['waitForReconciliation'] as bool,
    );
  }
}

