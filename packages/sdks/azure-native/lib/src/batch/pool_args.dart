// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_package_reference.dart';
import 'batch_pool_identity.dart';
import 'certificate_reference.dart';
import 'deployment_configuration.dart';
import 'inter_node_communication_state.dart';
import 'metadata_item.dart';
import 'mount_configuration.dart';
import 'network_configuration.dart';
import 'node_communication_mode.dart';
import 'scale_settings.dart';
import 'start_task.dart';
import 'task_scheduling_policy.dart';
import 'upgrade_policy.dart';
import 'user_account.dart';

/// {@template pulumi_batch_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_batch_pool_args_doc}
class PoolArgs {
  /// A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  final pulumi.Input<String> accountName;
  /// The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, pool creation will fail.
  final pulumi.Input<List<String>>? applicationLicenses;
  /// Changes to application package references affect all new compute nodes joining the pool, but do not affect compute nodes that are already in the pool until they are rebooted or reimaged. There is a maximum of 10 application package references on any given pool.
  final pulumi.Input<List<ApplicationPackageReference>>? applicationPackages;
  /// For Windows compute nodes, the Batch service installs the certificates to the specified certificate store and location. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  ///
  /// Warning: This property is deprecated and will be removed after February, 2024. Please use the [Azure KeyVault Extension](https://learn.microsoft.com/azure/batch/batch-certificate-migration-guide) instead.
  final pulumi.Input<List<CertificateReference>>? certificates;
  /// Deployment configuration properties.
  final pulumi.Input<DeploymentConfiguration>? deploymentConfiguration;
  /// The display name need not be unique and can contain any Unicode characters up to a maximum length of 1024.
  final pulumi.Input<String>? displayName;
  /// The type of identity used for the Batch Pool.
  final pulumi.Input<BatchPoolIdentity>? identity;
  /// This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. If not specified, this value defaults to 'Disabled'.
  final pulumi.Input<InterNodeCommunicationState>? interNodeCommunication;
  /// The Batch service does not assign any meaning to metadata; it is solely for the use of user code.
  final pulumi.Input<List<MetadataItem>>? metadata;
  /// This supports Azure Files, NFS, CIFS/SMB, and Blobfuse.
  final pulumi.Input<List<MountConfiguration>>? mountConfiguration;
  /// The network configuration for a pool.
  final pulumi.Input<NetworkConfiguration>? networkConfiguration;
  /// The pool name. This must be unique within the account.
  final pulumi.Input<String>? poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The user-defined tags to be associated with the Azure Batch Pool. When specified, these tags are propagated to the backing Azure resources associated with the pool. This property can only be specified when the Batch account was created with the poolAllocationMode property set to 'UserSubscription'.
  final pulumi.Input<Map<String, String>>? resourceTags;
  /// Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
  final pulumi.Input<ScaleSettings>? scaleSettings;
  /// In an PATCH (update) operation, this property can be set to an empty object to remove the start task from the pool.
  final pulumi.Input<StartTask>? startTask;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// If omitted, the default value is Default.
  final pulumi.Input<NodeCommunicationMode>? targetNodeCommunicationMode;
  /// If not specified, the default is spread.
  final pulumi.Input<TaskSchedulingPolicy>? taskSchedulingPolicy;
  /// The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the pool or 256.
  final pulumi.Input<int>? taskSlotsPerNode;
  /// Describes an upgrade policy - automatic, manual, or rolling.
  final pulumi.Input<UpgradePolicy>? upgradePolicy;
  /// The list of user accounts to be created on each node in the pool.
  final pulumi.Input<List<UserAccount>>? userAccounts;
  /// For information about available VM sizes, see Sizes for Virtual Machines in Azure (https://learn.microsoft.com/azure/virtual-machines/sizes/overview). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).
  final pulumi.Input<String>? vmSize;

  /// Creates a new [PoolArgs].
  /// [accountName] A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  /// [applicationLicenses] The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, pool creation will fail.
  /// [applicationPackages] Changes to application package references affect all new compute nodes joining the pool, but do not affect compute nodes that are already in the pool until they are rebooted or reimaged. There is a maximum of 10 application package references on any given pool.
  /// [certificates] For Windows compute nodes, the Batch service installs the certificates to the specified certificate store and location. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  /// [deploymentConfiguration] Deployment configuration properties.
  /// [displayName] The display name need not be unique and can contain any Unicode characters up to a maximum length of 1024.
  /// [identity] The type of identity used for the Batch Pool.
  /// [interNodeCommunication] This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. If not specified, this value defaults to 'Disabled'.
  /// [metadata] The Batch service does not assign any meaning to metadata; it is solely for the use of user code.
  /// [mountConfiguration] This supports Azure Files, NFS, CIFS/SMB, and Blobfuse.
  /// [networkConfiguration] The network configuration for a pool.
  /// [poolName] The pool name. This must be unique within the account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceTags] The user-defined tags to be associated with the Azure Batch Pool. When specified, these tags are propagated to the backing Azure resources associated with the pool. This property can only be specified when the Batch account was created with the poolAllocationMode property set to 'UserSubscription'.
  /// [scaleSettings] Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
  /// [startTask] In an PATCH (update) operation, this property can be set to an empty object to remove the start task from the pool.
  /// [tags] The tags of the resource.
  /// [targetNodeCommunicationMode] If omitted, the default value is Default.
  /// [taskSchedulingPolicy] If not specified, the default is spread.
  /// [taskSlotsPerNode] The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the pool or 256.
  /// [upgradePolicy] Describes an upgrade policy - automatic, manual, or rolling.
  /// [userAccounts] The list of user accounts to be created on each node in the pool.
  /// [vmSize] For information about available VM sizes, see Sizes for Virtual Machines in Azure (https://learn.microsoft.com/azure/virtual-machines/sizes/overview). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).
  PoolArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<List<String>>? applicationLicenses,
    pulumi.Output<List<ApplicationPackageReference>>? applicationPackages,
    pulumi.Output<List<CertificateReference>>? certificates,
    pulumi.Output<DeploymentConfiguration>? deploymentConfiguration,
    pulumi.Output<String>? displayName,
    pulumi.Output<BatchPoolIdentity>? identity,
    pulumi.Output<InterNodeCommunicationState>? interNodeCommunication,
    pulumi.Output<List<MetadataItem>>? metadata,
    pulumi.Output<List<MountConfiguration>>? mountConfiguration,
    pulumi.Output<NetworkConfiguration>? networkConfiguration,
    pulumi.Output<String>? poolName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? resourceTags,
    pulumi.Output<ScaleSettings>? scaleSettings,
    pulumi.Output<StartTask>? startTask,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<NodeCommunicationMode>? targetNodeCommunicationMode,
    pulumi.Output<TaskSchedulingPolicy>? taskSchedulingPolicy,
    pulumi.Output<int>? taskSlotsPerNode,
    pulumi.Output<UpgradePolicy>? upgradePolicy,
    pulumi.Output<List<UserAccount>>? userAccounts,
    pulumi.Output<String>? vmSize,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      applicationLicenses = pulumi.Input.asOptionalInput<List<String>>(applicationLicenses),
      applicationPackages = pulumi.Input.asOptionalInput<List<ApplicationPackageReference>>(applicationPackages),
      certificates = pulumi.Input.asOptionalInput<List<CertificateReference>>(certificates),
      deploymentConfiguration = pulumi.Input.asOptionalInput<DeploymentConfiguration>(deploymentConfiguration),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<BatchPoolIdentity>(identity),
      interNodeCommunication = pulumi.Input.asOptionalInput<InterNodeCommunicationState>(interNodeCommunication),
      metadata = pulumi.Input.asOptionalInput<List<MetadataItem>>(metadata),
      mountConfiguration = pulumi.Input.asOptionalInput<List<MountConfiguration>>(mountConfiguration),
      networkConfiguration = pulumi.Input.asOptionalInput<NetworkConfiguration>(networkConfiguration),
      poolName = pulumi.Input.asOptionalInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
      scaleSettings = pulumi.Input.asOptionalInput<ScaleSettings>(scaleSettings),
      startTask = pulumi.Input.asOptionalInput<StartTask>(startTask),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetNodeCommunicationMode = pulumi.Input.asOptionalInput<NodeCommunicationMode>(targetNodeCommunicationMode),
      taskSchedulingPolicy = pulumi.Input.asOptionalInput<TaskSchedulingPolicy>(taskSchedulingPolicy),
      taskSlotsPerNode = pulumi.Input.asOptionalInput<int>(taskSlotsPerNode),
      upgradePolicy = pulumi.Input.asOptionalInput<UpgradePolicy>(upgradePolicy),
      userAccounts = pulumi.Input.asOptionalInput<List<UserAccount>>(userAccounts),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'applicationLicenses': ?applicationLicenses,
      'applicationPackages': ?pulumi.Input.mapOptionalInputValue<List<ApplicationPackageReference>, List<Map<String, dynamic>>>(applicationPackages, (value) => pulumi.Input.encodeList<ApplicationPackageReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<CertificateReference>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<CertificateReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentConfiguration': ?pulumi.Input.mapOptionalInputValue<DeploymentConfiguration, Map<String, dynamic>>(deploymentConfiguration, (value) => value.toMap()),
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<BatchPoolIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'interNodeCommunication': ?pulumi.Input.mapOptionalInputValue<InterNodeCommunicationState, String>(interNodeCommunication, (value) => value.value),
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItem>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mountConfiguration': ?pulumi.Input.mapOptionalInputValue<List<MountConfiguration>, List<Map<String, dynamic>>>(mountConfiguration, (value) => pulumi.Input.encodeList<MountConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'poolName': ?poolName,
      'resourceGroupName': resourceGroupName,
      'resourceTags': ?resourceTags,
      'scaleSettings': ?pulumi.Input.mapOptionalInputValue<ScaleSettings, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'startTask': ?pulumi.Input.mapOptionalInputValue<StartTask, Map<String, dynamic>>(startTask, (value) => value.toMap()),
      'tags': ?tags,
      'targetNodeCommunicationMode': ?pulumi.Input.mapOptionalInputValue<NodeCommunicationMode, String>(targetNodeCommunicationMode, (value) => value.value),
      'taskSchedulingPolicy': ?pulumi.Input.mapOptionalInputValue<TaskSchedulingPolicy, Map<String, dynamic>>(taskSchedulingPolicy, (value) => value.toMap()),
      'taskSlotsPerNode': ?taskSlotsPerNode,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<UpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'userAccounts': ?pulumi.Input.mapOptionalInputValue<List<UserAccount>, List<Map<String, dynamic>>>(userAccounts, (value) => pulumi.Input.encodeList<UserAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': ?vmSize,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      applicationLicenses: map['applicationLicenses'] == null ? null : pulumi.Output.create<List<String>>((map['applicationLicenses'] as List).cast<String>()),
      applicationPackages: map['applicationPackages'] == null ? null : pulumi.Output.create<List<ApplicationPackageReference>>(pulumi.Input.decodeList<ApplicationPackageReference>(map['applicationPackages'], (value) => ApplicationPackageReference.fromMap((value as Map).cast<String, dynamic>()))),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<CertificateReference>>(pulumi.Input.decodeList<CertificateReference>(map['certificates'], (value) => CertificateReference.fromMap((value as Map).cast<String, dynamic>()))),
      deploymentConfiguration: map['deploymentConfiguration'] == null ? null : pulumi.Output.create<DeploymentConfiguration>(DeploymentConfiguration.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<BatchPoolIdentity>(BatchPoolIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      interNodeCommunication: map['interNodeCommunication'] == null ? null : pulumi.Output.create<InterNodeCommunicationState>(InterNodeCommunicationState.fromValue(map['interNodeCommunication'] as String)),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<List<MetadataItem>>(pulumi.Input.decodeList<MetadataItem>(map['metadata'], (value) => MetadataItem.fromMap((value as Map).cast<String, dynamic>()))),
      mountConfiguration: map['mountConfiguration'] == null ? null : pulumi.Output.create<List<MountConfiguration>>(pulumi.Input.decodeList<MountConfiguration>(map['mountConfiguration'], (value) => MountConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<NetworkConfiguration>(NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      poolName: map['poolName'] == null ? null : pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceTags: map['resourceTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceTags'] as Map).cast<String, String>()),
      scaleSettings: map['scaleSettings'] == null ? null : pulumi.Output.create<ScaleSettings>(ScaleSettings.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>())),
      startTask: map['startTask'] == null ? null : pulumi.Output.create<StartTask>(StartTask.fromMap((map['startTask'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetNodeCommunicationMode: map['targetNodeCommunicationMode'] == null ? null : pulumi.Output.create<NodeCommunicationMode>(NodeCommunicationMode.fromValue(map['targetNodeCommunicationMode'] as String)),
      taskSchedulingPolicy: map['taskSchedulingPolicy'] == null ? null : pulumi.Output.create<TaskSchedulingPolicy>(TaskSchedulingPolicy.fromMap((map['taskSchedulingPolicy'] as Map).cast<String, dynamic>())),
      taskSlotsPerNode: map['taskSlotsPerNode'] == null ? null : pulumi.Output.create<int>(map['taskSlotsPerNode'] as int),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<UpgradePolicy>(UpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      userAccounts: map['userAccounts'] == null ? null : pulumi.Output.create<List<UserAccount>>(pulumi.Input.decodeList<UserAccount>(map['userAccounts'], (value) => UserAccount.fromMap((value as Map).cast<String, dynamic>()))),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
    );
  }
}

