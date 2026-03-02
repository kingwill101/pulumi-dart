// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_package_reference_response.dart';
import 'auto_scale_run_response.dart';
import 'batch_pool_identity_response.dart';
import 'certificate_reference_response.dart';
import 'deployment_configuration_response.dart';
import 'metadata_item_response.dart';
import 'mount_configuration_response.dart';
import 'network_configuration_response.dart';
import 'resize_operation_status_response.dart';
import 'scale_settings_response.dart';
import 'start_task_response.dart';
import 'system_data_response.dart';
import 'task_scheduling_policy_response.dart';
import 'upgrade_policy_response.dart';
import 'user_account_response.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// Whether the pool is resizing.
  final String allocationState;
  /// The time at which the pool entered its current allocation state.
  final String allocationStateTransitionTime;
  /// The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, pool creation will fail.
  final List<String>? applicationLicenses;
  /// Changes to application package references affect all new compute nodes joining the pool, but do not affect compute nodes that are already in the pool until they are rebooted or reimaged. There is a maximum of 10 application package references on any given pool.
  final List<ApplicationPackageReferenceResponse>? applicationPackages;
  /// This property is set only if the pool automatically scales, i.e. autoScaleSettings are used.
  final AutoScaleRunResponse autoScaleRun;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// For Windows compute nodes, the Batch service installs the certificates to the specified certificate store and location. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  ///
  /// Warning: This property is deprecated and will be removed after February, 2024. Please use the [Azure KeyVault Extension](https://learn.microsoft.com/azure/batch/batch-certificate-migration-guide) instead.
  final List<CertificateReferenceResponse>? certificates;
  /// The creation time of the pool.
  final String creationTime;
  /// The number of dedicated compute nodes currently in the pool.
  final int currentDedicatedNodes;
  /// The number of Spot/low-priority compute nodes currently in the pool.
  final int currentLowPriorityNodes;
  /// Determines how a pool communicates with the Batch service.
  final String currentNodeCommunicationMode;
  /// Deployment configuration properties.
  final DeploymentConfigurationResponse? deploymentConfiguration;
  /// The display name need not be unique and can contain any Unicode characters up to a maximum length of 1024.
  final String? displayName;
  /// The ETag of the resource, used for concurrency statements.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The type of identity used for the Batch Pool.
  final BatchPoolIdentityResponse? identity;
  /// This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. If not specified, this value defaults to 'Disabled'.
  final String? interNodeCommunication;
  /// This is the last time at which the pool level data, such as the targetDedicatedNodes or autoScaleSettings, changed. It does not factor in node-level changes such as a compute node changing state.
  final String lastModified;
  /// The Batch service does not assign any meaning to metadata; it is solely for the use of user code.
  final List<MetadataItemResponse>? metadata;
  /// This supports Azure Files, NFS, CIFS/SMB, and Blobfuse.
  final List<MountConfigurationResponse>? mountConfiguration;
  /// The name of the resource
  final String name;
  /// The network configuration for a pool.
  final NetworkConfigurationResponse? networkConfiguration;
  /// The current state of the pool.
  final String provisioningState;
  /// The time at which the pool entered its current state.
  final String provisioningStateTransitionTime;
  /// Describes either the current operation (if the pool AllocationState is Resizing) or the previously completed operation (if the AllocationState is Steady).
  final ResizeOperationStatusResponse resizeOperationStatus;
  /// The user-defined tags to be associated with the Azure Batch Pool. When specified, these tags are propagated to the backing Azure resources associated with the pool. This property can only be specified when the Batch account was created with the poolAllocationMode property set to 'UserSubscription'.
  final Map<String, String>? resourceTags;
  /// Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
  final ScaleSettingsResponse? scaleSettings;
  /// In an PATCH (update) operation, this property can be set to an empty object to remove the start task from the pool.
  final StartTaskResponse? startTask;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// If omitted, the default value is Default.
  final String? targetNodeCommunicationMode;
  /// If not specified, the default is spread.
  final TaskSchedulingPolicyResponse? taskSchedulingPolicy;
  /// The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the pool or 256.
  final int? taskSlotsPerNode;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Describes an upgrade policy - automatic, manual, or rolling.
  final UpgradePolicyResponse? upgradePolicy;
  /// The list of user accounts to be created on each node in the pool.
  final List<UserAccountResponse>? userAccounts;
  /// For information about available VM sizes, see Sizes for Virtual Machines in Azure (https://learn.microsoft.com/azure/virtual-machines/sizes/overview). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).
  final String? vmSize;

  /// Creates a new [GetPoolResult].
  /// [allocationState] Whether the pool is resizing.
  /// [allocationStateTransitionTime] The time at which the pool entered its current allocation state.
  /// [applicationLicenses] The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, pool creation will fail.
  /// [applicationPackages] Changes to application package references affect all new compute nodes joining the pool, but do not affect compute nodes that are already in the pool until they are rebooted or reimaged. There is a maximum of 10 application package references on any given pool.
  /// [autoScaleRun] This property is set only if the pool automatically scales, i.e. autoScaleSettings are used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificates] For Windows compute nodes, the Batch service installs the certificates to the specified certificate store and location. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  /// [creationTime] The creation time of the pool.
  /// [currentDedicatedNodes] The number of dedicated compute nodes currently in the pool.
  /// [currentLowPriorityNodes] The number of Spot/low-priority compute nodes currently in the pool.
  /// [currentNodeCommunicationMode] Determines how a pool communicates with the Batch service.
  /// [deploymentConfiguration] Deployment configuration properties.
  /// [displayName] The display name need not be unique and can contain any Unicode characters up to a maximum length of 1024.
  /// [etag] The ETag of the resource, used for concurrency statements.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The type of identity used for the Batch Pool.
  /// [interNodeCommunication] This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. If not specified, this value defaults to 'Disabled'.
  /// [lastModified] This is the last time at which the pool level data, such as the targetDedicatedNodes or autoScaleSettings, changed. It does not factor in node-level changes such as a compute node changing state.
  /// [metadata] The Batch service does not assign any meaning to metadata; it is solely for the use of user code.
  /// [mountConfiguration] This supports Azure Files, NFS, CIFS/SMB, and Blobfuse.
  /// [name] The name of the resource
  /// [networkConfiguration] The network configuration for a pool.
  /// [provisioningState] The current state of the pool.
  /// [provisioningStateTransitionTime] The time at which the pool entered its current state.
  /// [resizeOperationStatus] Describes either the current operation (if the pool AllocationState is Resizing) or the previously completed operation (if the AllocationState is Steady).
  /// [resourceTags] The user-defined tags to be associated with the Azure Batch Pool. When specified, these tags are propagated to the backing Azure resources associated with the pool. This property can only be specified when the Batch account was created with the poolAllocationMode property set to 'UserSubscription'.
  /// [scaleSettings] Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
  /// [startTask] In an PATCH (update) operation, this property can be set to an empty object to remove the start task from the pool.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The tags of the resource.
  /// [targetNodeCommunicationMode] If omitted, the default value is Default.
  /// [taskSchedulingPolicy] If not specified, the default is spread.
  /// [taskSlotsPerNode] The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the pool or 256.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [upgradePolicy] Describes an upgrade policy - automatic, manual, or rolling.
  /// [userAccounts] The list of user accounts to be created on each node in the pool.
  /// [vmSize] For information about available VM sizes, see Sizes for Virtual Machines in Azure (https://learn.microsoft.com/azure/virtual-machines/sizes/overview). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).
  GetPoolResult({
    required this.allocationState,
    required this.allocationStateTransitionTime,
    this.applicationLicenses,
    this.applicationPackages,
    required this.autoScaleRun,
    required this.azureApiVersion,
    this.certificates,
    required this.creationTime,
    required this.currentDedicatedNodes,
    required this.currentLowPriorityNodes,
    required this.currentNodeCommunicationMode,
    this.deploymentConfiguration,
    this.displayName,
    required this.etag,
    required this.id,
    this.identity,
    this.interNodeCommunication,
    required this.lastModified,
    this.metadata,
    this.mountConfiguration,
    required this.name,
    this.networkConfiguration,
    required this.provisioningState,
    required this.provisioningStateTransitionTime,
    required this.resizeOperationStatus,
    this.resourceTags,
    this.scaleSettings,
    this.startTask,
    required this.systemData,
    this.tags,
    this.targetNodeCommunicationMode,
    this.taskSchedulingPolicy,
    this.taskSlotsPerNode,
    required this.type,
    this.upgradePolicy,
    this.userAccounts,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationState': allocationState,
      'allocationStateTransitionTime': allocationStateTransitionTime,
      'applicationLicenses': ?applicationLicenses,
      'applicationPackages': ?applicationPackages == null ? null : pulumi.Input.encodeList<ApplicationPackageReferenceResponse, Map<String, dynamic>>(applicationPackages!, (value) => value.toMap()),
      'autoScaleRun': autoScaleRun.toMap(),
      'azureApiVersion': azureApiVersion,
      'certificates': ?certificates == null ? null : pulumi.Input.encodeList<CertificateReferenceResponse, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'creationTime': creationTime,
      'currentDedicatedNodes': currentDedicatedNodes,
      'currentLowPriorityNodes': currentLowPriorityNodes,
      'currentNodeCommunicationMode': currentNodeCommunicationMode,
      'deploymentConfiguration': ?deploymentConfiguration == null ? null : deploymentConfiguration!.toMap(),
      'displayName': ?displayName,
      'etag': etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'interNodeCommunication': ?interNodeCommunication,
      'lastModified': lastModified,
      'metadata': ?metadata == null ? null : pulumi.Input.encodeList<MetadataItemResponse, Map<String, dynamic>>(metadata!, (value) => value.toMap()),
      'mountConfiguration': ?mountConfiguration == null ? null : pulumi.Input.encodeList<MountConfigurationResponse, Map<String, dynamic>>(mountConfiguration!, (value) => value.toMap()),
      'name': name,
      'networkConfiguration': ?networkConfiguration == null ? null : networkConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'provisioningStateTransitionTime': provisioningStateTransitionTime,
      'resizeOperationStatus': resizeOperationStatus.toMap(),
      'resourceTags': ?resourceTags,
      'scaleSettings': ?scaleSettings == null ? null : scaleSettings!.toMap(),
      'startTask': ?startTask == null ? null : startTask!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetNodeCommunicationMode': ?targetNodeCommunicationMode,
      'taskSchedulingPolicy': ?taskSchedulingPolicy == null ? null : taskSchedulingPolicy!.toMap(),
      'taskSlotsPerNode': ?taskSlotsPerNode,
      'type': type,
      'upgradePolicy': ?upgradePolicy == null ? null : upgradePolicy!.toMap(),
      'userAccounts': ?userAccounts == null ? null : pulumi.Input.encodeList<UserAccountResponse, Map<String, dynamic>>(userAccounts!, (value) => value.toMap()),
      'vmSize': ?vmSize,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      allocationState: map['allocationState'] as String,
      allocationStateTransitionTime: map['allocationStateTransitionTime'] as String,
      applicationLicenses: map['applicationLicenses'] == null ? null : (map['applicationLicenses']! as List).cast<String>(),
      applicationPackages: map['applicationPackages'] == null ? null : pulumi.Input.decodeList<ApplicationPackageReferenceResponse>(map['applicationPackages']!, (value) => ApplicationPackageReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoScaleRun: AutoScaleRunResponse.fromMap((map['autoScaleRun'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeList<CertificateReferenceResponse>(map['certificates']!, (value) => CertificateReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as String,
      currentDedicatedNodes: map['currentDedicatedNodes'] as int,
      currentLowPriorityNodes: map['currentLowPriorityNodes'] as int,
      currentNodeCommunicationMode: map['currentNodeCommunicationMode'] as String,
      deploymentConfiguration: map['deploymentConfiguration'] == null ? null : DeploymentConfigurationResponse.fromMap((map['deploymentConfiguration']! as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : BatchPoolIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      interNodeCommunication: map['interNodeCommunication'] == null ? null : map['interNodeCommunication']! as String,
      lastModified: map['lastModified'] as String,
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<MetadataItemResponse>(map['metadata']!, (value) => MetadataItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      mountConfiguration: map['mountConfiguration'] == null ? null : pulumi.Input.decodeList<MountConfigurationResponse>(map['mountConfiguration']!, (value) => MountConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkConfiguration: map['networkConfiguration'] == null ? null : NetworkConfigurationResponse.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      provisioningStateTransitionTime: map['provisioningStateTransitionTime'] as String,
      resizeOperationStatus: ResizeOperationStatusResponse.fromMap((map['resizeOperationStatus'] as Map).cast<String, dynamic>()),
      resourceTags: map['resourceTags'] == null ? null : (map['resourceTags']! as Map).cast<String, String>(),
      scaleSettings: map['scaleSettings'] == null ? null : ScaleSettingsResponse.fromMap((map['scaleSettings']! as Map).cast<String, dynamic>()),
      startTask: map['startTask'] == null ? null : StartTaskResponse.fromMap((map['startTask']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      targetNodeCommunicationMode: map['targetNodeCommunicationMode'] == null ? null : map['targetNodeCommunicationMode']! as String,
      taskSchedulingPolicy: map['taskSchedulingPolicy'] == null ? null : TaskSchedulingPolicyResponse.fromMap((map['taskSchedulingPolicy']! as Map).cast<String, dynamic>()),
      taskSlotsPerNode: map['taskSlotsPerNode'] == null ? null : map['taskSlotsPerNode']! as int,
      type: map['type'] as String,
      upgradePolicy: map['upgradePolicy'] == null ? null : UpgradePolicyResponse.fromMap((map['upgradePolicy']! as Map).cast<String, dynamic>()),
      userAccounts: map['userAccounts'] == null ? null : pulumi.Input.decodeList<UserAccountResponse>(map['userAccounts']!, (value) => UserAccountResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmSize: map['vmSize'] == null ? null : map['vmSize']! as String,
    );
  }
}

