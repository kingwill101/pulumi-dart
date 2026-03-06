// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_definition_response.dart';
import 'bucket_definition_response.dart';
import 'git_repository_definition_response.dart';
import 'kustomization_definition_response.dart';
import 'object_status_definition_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFluxConfiguration.
class GetFluxConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Parameters to reconcile to the AzureBlob source kind type.
  final AzureBlobDefinitionResponse? azureBlob;
  /// Parameters to reconcile to the Bucket source kind type.
  final BucketDefinitionResponse? bucket;
  /// Combined status of the Flux Kubernetes resources created by the fluxConfiguration or created by the managed objects.
  final String complianceState;
  /// Key-value pairs of protected configuration settings for the configuration
  final Map<String, String>? configurationProtectedSettings;
  /// Error message returned to the user in the case of provisioning failure.
  final String errorMessage;
  /// Parameters to reconcile to the GitRepository source kind type.
  final GitRepositoryDefinitionResponse? gitRepository;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Array of kustomizations used to reconcile the artifact pulled by the source type on the cluster.
  final Map<String, KustomizationDefinitionResponse>? kustomizations;
  /// The name of the resource
  final String name;
  /// The namespace to which this configuration is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  final String? namespace;
  /// Status of the creation of the fluxConfiguration.
  final String provisioningState;
  /// Maximum duration to wait for flux configuration reconciliation. E.g PT1H, PT5M, P1D
  final String? reconciliationWaitDuration;
  /// Public Key associated with this fluxConfiguration (either generated within the cluster or provided by the user).
  final String repositoryPublicKey;
  /// Scope at which the operator will be installed.
  final String? scope;
  /// Source Kind to pull the configuration data from.
  final String? sourceKind;
  /// Branch and/or SHA of the source commit synced with the cluster.
  final String sourceSyncedCommitId;
  /// Datetime the fluxConfiguration synced its source on the cluster.
  final String sourceUpdatedAt;
  /// Datetime the fluxConfiguration synced its status on the cluster with Azure.
  final String statusUpdatedAt;
  /// Statuses of the Flux Kubernetes resources created by the fluxConfiguration or created by the managed objects provisioned by the fluxConfiguration.
  final List<ObjectStatusDefinitionResponse> statuses;
  /// Whether this configuration should suspend its reconciliation of its kustomizations and sources.
  final bool? suspend;
  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Whether flux configuration deployment should wait for cluster to reconcile the kustomizations.
  final bool? waitForReconciliation;

  /// Creates a new [GetFluxConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureBlob] Parameters to reconcile to the AzureBlob source kind type.
  /// [bucket] Parameters to reconcile to the Bucket source kind type.
  /// [complianceState] Combined status of the Flux Kubernetes resources created by the fluxConfiguration or created by the managed objects.
  /// [configurationProtectedSettings] Key-value pairs of protected configuration settings for the configuration
  /// [errorMessage] Error message returned to the user in the case of provisioning failure.
  /// [gitRepository] Parameters to reconcile to the GitRepository source kind type.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kustomizations] Array of kustomizations used to reconcile the artifact pulled by the source type on the cluster.
  /// [name] The name of the resource
  /// [namespace] The namespace to which this configuration is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  /// [provisioningState] Status of the creation of the fluxConfiguration.
  /// [reconciliationWaitDuration] Maximum duration to wait for flux configuration reconciliation. E.g PT1H, PT5M, P1D
  /// [repositoryPublicKey] Public Key associated with this fluxConfiguration (either generated within the cluster or provided by the user).
  /// [scope] Scope at which the operator will be installed.
  /// [sourceKind] Source Kind to pull the configuration data from.
  /// [sourceSyncedCommitId] Branch and/or SHA of the source commit synced with the cluster.
  /// [sourceUpdatedAt] Datetime the fluxConfiguration synced its source on the cluster.
  /// [statusUpdatedAt] Datetime the fluxConfiguration synced its status on the cluster with Azure.
  /// [statuses] Statuses of the Flux Kubernetes resources created by the fluxConfiguration or created by the managed objects provisioned by the fluxConfiguration.
  /// [suspend] Whether this configuration should suspend its reconciliation of its kustomizations and sources.
  /// [systemData] Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [waitForReconciliation] Whether flux configuration deployment should wait for cluster to reconcile the kustomizations.
  const GetFluxConfigurationResult({
    required this.azureApiVersion,
    this.azureBlob,
    this.bucket,
    required this.complianceState,
    this.configurationProtectedSettings,
    required this.errorMessage,
    this.gitRepository,
    required this.id,
    this.kustomizations,
    required this.name,
    this.namespace,
    required this.provisioningState,
    this.reconciliationWaitDuration,
    required this.repositoryPublicKey,
    this.scope,
    this.sourceKind,
    required this.sourceSyncedCommitId,
    required this.sourceUpdatedAt,
    required this.statusUpdatedAt,
    required this.statuses,
    this.suspend,
    required this.systemData,
    required this.type,
    this.waitForReconciliation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureBlob': ?azureBlob?.toMap(),
      'bucket': ?bucket?.toMap(),
      'complianceState': complianceState,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'errorMessage': errorMessage,
      'gitRepository': ?gitRepository?.toMap(),
      'id': id,
      'kustomizations': ?(() { final guardedValue = kustomizations; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<KustomizationDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'namespace': ?namespace,
      'provisioningState': provisioningState,
      'reconciliationWaitDuration': ?reconciliationWaitDuration,
      'repositoryPublicKey': repositoryPublicKey,
      'scope': ?scope,
      'sourceKind': ?sourceKind,
      'sourceSyncedCommitId': sourceSyncedCommitId,
      'sourceUpdatedAt': sourceUpdatedAt,
      'statusUpdatedAt': statusUpdatedAt,
      'statuses': pulumi.Input.encodeList<ObjectStatusDefinitionResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'suspend': ?suspend,
      'systemData': systemData.toMap(),
      'type': type,
      'waitForReconciliation': ?waitForReconciliation,
    };
  }

  factory GetFluxConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetFluxConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureBlob: (() { final guardedValue = map['azureBlob']; if (guardedValue == null) return null; return AzureBlobDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return BucketDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      complianceState: map['complianceState'] as String,
      configurationProtectedSettings: (() { final guardedValue = map['configurationProtectedSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      errorMessage: map['errorMessage'] as String,
      gitRepository: (() { final guardedValue = map['gitRepository']; if (guardedValue == null) return null; return GitRepositoryDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      kustomizations: (() { final guardedValue = map['kustomizations']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<KustomizationDefinitionResponse>(guardedValue, (value) => KustomizationDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      reconciliationWaitDuration: (() { final guardedValue = map['reconciliationWaitDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryPublicKey: map['repositoryPublicKey'] as String,
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceKind: (() { final guardedValue = map['sourceKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceSyncedCommitId: map['sourceSyncedCommitId'] as String,
      sourceUpdatedAt: map['sourceUpdatedAt'] as String,
      statusUpdatedAt: map['statusUpdatedAt'] as String,
      statuses: pulumi.Input.decodeList<ObjectStatusDefinitionResponse>(map['statuses']!, (value) => ObjectStatusDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      suspend: (() { final guardedValue = map['suspend']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      waitForReconciliation: (() { final guardedValue = map['waitForReconciliation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

