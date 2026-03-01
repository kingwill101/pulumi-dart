// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_vm_disk_details_response.dart';
import 'health_error_response.dart';
import 'in_mage_azure_v2_managed_disk_details_response.dart';
import 'in_mage_azure_v2_protected_disk_details_response.dart';
import 'in_mage_azure_v2_switch_provider_blocking_error_details_response.dart';
import 'in_mage_azure_v2_switch_provider_details_response.dart';
import 'osupgrade_supported_versions_response.dart';
import 'vmnic_details_response.dart';

/// InMageAzureV2 provider specific settings.
class InMageAzureV2ReplicationDetailsResponse {
  /// Agent expiry date.
  final String? agentExpiryDate;
  /// The agent version.
  final String? agentVersion;
  /// A value indicating all available inplace OS Upgrade configurations.
  final List<OSUpgradeSupportedVersionsResponse>? allAvailableOSUpgradeConfigurations;
  /// Azure VM Disk details.
  final List<AzureVmDiskDetailsResponse>? azureVMDiskDetails;
  /// The target generation for this protected item.
  final String? azureVmGeneration;
  /// The compressed data change rate in MB.
  final double? compressedDataRateInMB;
  /// The datastores of the on-premise machine. Value can be list of strings that contain datastore names.
  final List<String>? datastores;
  /// A value indicating the discovery type of the machine. Value can be vCenter or physical.
  final String? discoveryType;
  /// A value indicating whether any disk is resized for this VM.
  final String? diskResized;
  /// The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final String? enableRdpOnTargetOption;
  /// The firmware type of this protected item.
  final String? firmwareType;
  /// The infrastructure VM Id.
  final String? infrastructureVmId;
  /// Gets the Instance type.
  /// Expected value is 'InMageAzureV2'.
  final String instanceType;
  /// The source IP address.
  final String? ipAddress;
  /// A value indicating whether additional IR stats are available or not.
  final bool? isAdditionalStatsAvailable;
  /// A value indicating whether installed agent needs to be updated.
  final String? isAgentUpdateRequired;
  /// A value indicating whether the source server requires a restart after update.
  final String? isRebootAfterUpdateRequired;
  /// The last heartbeat received from the source server.
  final String? lastHeartbeat;
  /// The last recovery point received time.
  final String lastRecoveryPointReceived;
  /// The last RPO calculated time.
  final String? lastRpoCalculatedTime;
  /// The last update time received from on-prem components.
  final String? lastUpdateReceivedTime;
  /// License Type of the VM to be used.
  final String? licenseType;
  /// The master target Id.
  final String? masterTargetId;
  /// The multi vm group Id.
  final String? multiVmGroupId;
  /// The multi vm group name.
  final String? multiVmGroupName;
  /// A value indicating whether multi vm sync is enabled or disabled.
  final String? multiVmSyncStatus;
  /// The id of the disk containing the OS.
  final String? osDiskId;
  /// The name of the OS on the VM.
  final String osName;
  /// The type of the OS on the VM.
  final String? osType;
  /// The OS Version of the protected item.
  final String? osVersion;
  /// The process server Id.
  final String? processServerId;
  /// The process server name.
  final String? processServerName;
  /// The list of protected disks.
  final List<InMageAzureV2ProtectedDiskDetailsResponse>? protectedDisks;
  /// The list of protected managed disks.
  final List<InMageAzureV2ManagedDiskDetailsResponse>? protectedManagedDisks;
  /// The protection stage.
  final String? protectionStage;
  /// The recovery availability set Id.
  final String? recoveryAvailabilitySetId;
  /// The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  final String? recoveryAzureLogStorageAccountId;
  /// The target resource group Id.
  final String? recoveryAzureResourceGroupId;
  /// The recovery Azure storage account.
  final String? recoveryAzureStorageAccount;
  /// Recovery Azure given name.
  final String? recoveryAzureVMName;
  /// The Recovery Azure VM size.
  final String? recoveryAzureVMSize;
  /// The replica id of the protected item.
  final String? replicaId;
  /// The resync progress percentage.
  final int? resyncProgressPercentage;
  /// The RPO in seconds.
  final double? rpoInSeconds;
  /// The tags for the seed managed disks.
  final Map<String, String>? seedManagedDiskTags;
  /// The selected recovery azure network Id.
  final String? selectedRecoveryAzureNetworkId;
  /// The selected source nic Id which will be used as the primary nic during failover.
  final String? selectedSourceNicId;
  /// The test failover virtual network.
  final String? selectedTfoAzureNetworkId;
  /// The CPU count of the VM on the primary side.
  final int? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final int? sourceVmRamSizeInMB;
  /// The SQL Server license type.
  final String? sqlServerLicenseType;
  /// A value indicating the inplace OS Upgrade version.
  final List<String>? supportedOSVersions;
  /// The switch provider blocking error information.
  final List<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse>? switchProviderBlockingErrorDetails;
  /// The switch provider blocking error information.
  final InMageAzureV2SwitchProviderDetailsResponse? switchProviderDetails;
  /// The target availability zone.
  final String? targetAvailabilityZone;
  /// The tags for the target managed disks.
  final Map<String, String>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final Map<String, String>? targetNicTags;
  /// The target proximity placement group Id.
  final String? targetProximityPlacementGroupId;
  /// The ARM Id of the target Azure VM. This value will be null until the VM is failed over. Only after failure it will be populated with the ARM Id of the Azure VM.
  final String? targetVmId;
  /// The target VM tags.
  final Map<String, String>? targetVmTags;
  /// The total transferred data in bytes.
  final double? totalDataTransferred;
  /// The progress health.
  final String? totalProgressHealth;
  /// The uncompressed data change rate in MB.
  final double? uncompressedDataRateInMB;
  /// A value indicating whether managed disks should be used during failover.
  final String? useManagedDisks;
  /// The vCenter infrastructure Id.
  final String? vCenterInfrastructureId;
  /// The validation errors of the on-premise machine Value can be list of validation errors.
  final List<HealthErrorResponse>? validationErrors;
  /// The OS disk VHD name.
  final String? vhdName;
  /// The virtual machine Id.
  final String? vmId;
  /// The PE Network details.
  final List<VMNicDetailsResponse>? vmNics;
  /// The protection state for the vm.
  final String? vmProtectionState;
  /// The protection state description for the vm.
  final String? vmProtectionStateDescription;

  /// Creates a new [InMageAzureV2ReplicationDetailsResponse].
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The agent version.
  /// [allAvailableOSUpgradeConfigurations] A value indicating all available inplace OS Upgrade configurations.
  /// [azureVMDiskDetails] Azure VM Disk details.
  /// [azureVmGeneration] The target generation for this protected item.
  /// [compressedDataRateInMB] The compressed data change rate in MB.
  /// [datastores] The datastores of the on-premise machine. Value can be list of strings that contain datastore names.
  /// [discoveryType] A value indicating the discovery type of the machine. Value can be vCenter or physical.
  /// [diskResized] A value indicating whether any disk is resized for this VM.
  /// [enableRdpOnTargetOption] The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  /// [firmwareType] The firmware type of this protected item.
  /// [infrastructureVmId] The infrastructure VM Id.
  /// [instanceType] Gets the Instance type.
  /// [ipAddress] The source IP address.
  /// [isAdditionalStatsAvailable] A value indicating whether additional IR stats are available or not.
  /// [isAgentUpdateRequired] A value indicating whether installed agent needs to be updated.
  /// [isRebootAfterUpdateRequired] A value indicating whether the source server requires a restart after update.
  /// [lastHeartbeat] The last heartbeat received from the source server.
  /// [lastRecoveryPointReceived] The last recovery point received time.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [lastUpdateReceivedTime] The last update time received from on-prem components.
  /// [licenseType] License Type of the VM to be used.
  /// [masterTargetId] The master target Id.
  /// [multiVmGroupId] The multi vm group Id.
  /// [multiVmGroupName] The multi vm group name.
  /// [multiVmSyncStatus] A value indicating whether multi vm sync is enabled or disabled.
  /// [osDiskId] The id of the disk containing the OS.
  /// [osName] The name of the OS on the VM.
  /// [osType] The type of the OS on the VM.
  /// [osVersion] The OS Version of the protected item.
  /// [processServerId] The process server Id.
  /// [processServerName] The process server name.
  /// [protectedDisks] The list of protected disks.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [protectionStage] The protection stage.
  /// [recoveryAvailabilitySetId] The recovery availability set Id.
  /// [recoveryAzureLogStorageAccountId] The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  /// [recoveryAzureResourceGroupId] The target resource group Id.
  /// [recoveryAzureStorageAccount] The recovery Azure storage account.
  /// [recoveryAzureVMName] Recovery Azure given name.
  /// [recoveryAzureVMSize] The Recovery Azure VM size.
  /// [replicaId] The replica id of the protected item.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [rpoInSeconds] The RPO in seconds.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [selectedRecoveryAzureNetworkId] The selected recovery azure network Id.
  /// [selectedSourceNicId] The selected source nic Id which will be used as the primary nic during failover.
  /// [selectedTfoAzureNetworkId] The test failover virtual network.
  /// [sourceVmCpuCount] The CPU count of the VM on the primary side.
  /// [sourceVmRamSizeInMB] The RAM size of the VM on the primary side.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [supportedOSVersions] A value indicating the inplace OS Upgrade version.
  /// [switchProviderBlockingErrorDetails] The switch provider blocking error information.
  /// [switchProviderDetails] The switch provider blocking error information.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetVmId] The ARM Id of the target Azure VM. This value will be null until the VM is failed over. Only after failure it will be populated with the ARM Id of the Azure VM.
  /// [targetVmTags] The target VM tags.
  /// [totalDataTransferred] The total transferred data in bytes.
  /// [totalProgressHealth] The progress health.
  /// [uncompressedDataRateInMB] The uncompressed data change rate in MB.
  /// [useManagedDisks] A value indicating whether managed disks should be used during failover.
  /// [vCenterInfrastructureId] The vCenter infrastructure Id.
  /// [validationErrors] The validation errors of the on-premise machine Value can be list of validation errors.
  /// [vhdName] The OS disk VHD name.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  InMageAzureV2ReplicationDetailsResponse({
    this.agentExpiryDate,
    this.agentVersion,
    this.allAvailableOSUpgradeConfigurations,
    this.azureVMDiskDetails,
    this.azureVmGeneration,
    this.compressedDataRateInMB,
    this.datastores,
    this.discoveryType,
    this.diskResized,
    this.enableRdpOnTargetOption,
    this.firmwareType,
    this.infrastructureVmId,
    required this.instanceType,
    this.ipAddress,
    this.isAdditionalStatsAvailable,
    this.isAgentUpdateRequired,
    this.isRebootAfterUpdateRequired,
    this.lastHeartbeat,
    required this.lastRecoveryPointReceived,
    this.lastRpoCalculatedTime,
    this.lastUpdateReceivedTime,
    this.licenseType,
    this.masterTargetId,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.multiVmSyncStatus,
    this.osDiskId,
    required this.osName,
    this.osType,
    this.osVersion,
    this.processServerId,
    this.processServerName,
    this.protectedDisks,
    this.protectedManagedDisks,
    this.protectionStage,
    this.recoveryAvailabilitySetId,
    this.recoveryAzureLogStorageAccountId,
    this.recoveryAzureResourceGroupId,
    this.recoveryAzureStorageAccount,
    this.recoveryAzureVMName,
    this.recoveryAzureVMSize,
    this.replicaId,
    this.resyncProgressPercentage,
    this.rpoInSeconds,
    this.seedManagedDiskTags,
    this.selectedRecoveryAzureNetworkId,
    this.selectedSourceNicId,
    this.selectedTfoAzureNetworkId,
    this.sourceVmCpuCount,
    this.sourceVmRamSizeInMB,
    this.sqlServerLicenseType,
    this.supportedOSVersions,
    this.switchProviderBlockingErrorDetails,
    this.switchProviderDetails,
    this.targetAvailabilityZone,
    this.targetManagedDiskTags,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetVmId,
    this.targetVmTags,
    this.totalDataTransferred,
    this.totalProgressHealth,
    this.uncompressedDataRateInMB,
    this.useManagedDisks,
    this.vCenterInfrastructureId,
    this.validationErrors,
    this.vhdName,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'allAvailableOSUpgradeConfigurations': ?allAvailableOSUpgradeConfigurations == null ? null : pulumi.Input.encodeList<OSUpgradeSupportedVersionsResponse, Map<String, dynamic>>(allAvailableOSUpgradeConfigurations!, (value) => value.toMap()),
      'azureVMDiskDetails': ?azureVMDiskDetails == null ? null : pulumi.Input.encodeList<AzureVmDiskDetailsResponse, Map<String, dynamic>>(azureVMDiskDetails!, (value) => value.toMap()),
      'azureVmGeneration': ?azureVmGeneration,
      'compressedDataRateInMB': ?compressedDataRateInMB,
      'datastores': ?datastores,
      'discoveryType': ?discoveryType,
      'diskResized': ?diskResized,
      'enableRdpOnTargetOption': ?enableRdpOnTargetOption,
      'firmwareType': ?firmwareType,
      'infrastructureVmId': ?infrastructureVmId,
      'instanceType': instanceType,
      'ipAddress': ?ipAddress,
      'isAdditionalStatsAvailable': ?isAdditionalStatsAvailable,
      'isAgentUpdateRequired': ?isAgentUpdateRequired,
      'isRebootAfterUpdateRequired': ?isRebootAfterUpdateRequired,
      'lastHeartbeat': ?lastHeartbeat,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lastUpdateReceivedTime': ?lastUpdateReceivedTime,
      'licenseType': ?licenseType,
      'masterTargetId': ?masterTargetId,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'osDiskId': ?osDiskId,
      'osName': osName,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'processServerId': ?processServerId,
      'processServerName': ?processServerName,
      'protectedDisks': ?protectedDisks == null ? null : pulumi.Input.encodeList<InMageAzureV2ProtectedDiskDetailsResponse, Map<String, dynamic>>(protectedDisks!, (value) => value.toMap()),
      'protectedManagedDisks': ?protectedManagedDisks == null ? null : pulumi.Input.encodeList<InMageAzureV2ManagedDiskDetailsResponse, Map<String, dynamic>>(protectedManagedDisks!, (value) => value.toMap()),
      'protectionStage': ?protectionStage,
      'recoveryAvailabilitySetId': ?recoveryAvailabilitySetId,
      'recoveryAzureLogStorageAccountId': ?recoveryAzureLogStorageAccountId,
      'recoveryAzureResourceGroupId': ?recoveryAzureResourceGroupId,
      'recoveryAzureStorageAccount': ?recoveryAzureStorageAccount,
      'recoveryAzureVMName': ?recoveryAzureVMName,
      'recoveryAzureVMSize': ?recoveryAzureVMSize,
      'replicaId': ?replicaId,
      'resyncProgressPercentage': ?resyncProgressPercentage,
      'rpoInSeconds': ?rpoInSeconds,
      'seedManagedDiskTags': ?seedManagedDiskTags,
      'selectedRecoveryAzureNetworkId': ?selectedRecoveryAzureNetworkId,
      'selectedSourceNicId': ?selectedSourceNicId,
      'selectedTfoAzureNetworkId': ?selectedTfoAzureNetworkId,
      'sourceVmCpuCount': ?sourceVmCpuCount,
      'sourceVmRamSizeInMB': ?sourceVmRamSizeInMB,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'supportedOSVersions': ?supportedOSVersions,
      'switchProviderBlockingErrorDetails': ?switchProviderBlockingErrorDetails == null ? null : pulumi.Input.encodeList<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse, Map<String, dynamic>>(switchProviderBlockingErrorDetails!, (value) => value.toMap()),
      'switchProviderDetails': ?switchProviderDetails == null ? null : switchProviderDetails!.toMap(),
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetManagedDiskTags': ?targetManagedDiskTags,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetVmId': ?targetVmId,
      'targetVmTags': ?targetVmTags,
      'totalDataTransferred': ?totalDataTransferred,
      'totalProgressHealth': ?totalProgressHealth,
      'uncompressedDataRateInMB': ?uncompressedDataRateInMB,
      'useManagedDisks': ?useManagedDisks,
      'vCenterInfrastructureId': ?vCenterInfrastructureId,
      'validationErrors': ?validationErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(validationErrors!, (value) => value.toMap()),
      'vhdName': ?vhdName,
      'vmId': ?vmId,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory InMageAzureV2ReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2ReplicationDetailsResponse(
      agentExpiryDate: map['agentExpiryDate'] == null ? null : map['agentExpiryDate'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      allAvailableOSUpgradeConfigurations: map['allAvailableOSUpgradeConfigurations'] == null ? null : pulumi.Input.decodeList<OSUpgradeSupportedVersionsResponse>(map['allAvailableOSUpgradeConfigurations'], (value) => OSUpgradeSupportedVersionsResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureVMDiskDetails: map['azureVMDiskDetails'] == null ? null : pulumi.Input.decodeList<AzureVmDiskDetailsResponse>(map['azureVMDiskDetails'], (value) => AzureVmDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureVmGeneration: map['azureVmGeneration'] == null ? null : map['azureVmGeneration'] as String,
      compressedDataRateInMB: map['compressedDataRateInMB'] == null ? null : map['compressedDataRateInMB'] as double,
      datastores: map['datastores'] == null ? null : (map['datastores'] as List).cast<String>(),
      discoveryType: map['discoveryType'] == null ? null : map['discoveryType'] as String,
      diskResized: map['diskResized'] == null ? null : map['diskResized'] as String,
      enableRdpOnTargetOption: map['enableRdpOnTargetOption'] == null ? null : map['enableRdpOnTargetOption'] as String,
      firmwareType: map['firmwareType'] == null ? null : map['firmwareType'] as String,
      infrastructureVmId: map['infrastructureVmId'] == null ? null : map['infrastructureVmId'] as String,
      instanceType: map['instanceType'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      isAdditionalStatsAvailable: map['isAdditionalStatsAvailable'] == null ? null : map['isAdditionalStatsAvailable'] as bool,
      isAgentUpdateRequired: map['isAgentUpdateRequired'] == null ? null : map['isAgentUpdateRequired'] as String,
      isRebootAfterUpdateRequired: map['isRebootAfterUpdateRequired'] == null ? null : map['isRebootAfterUpdateRequired'] as String,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      lastRecoveryPointReceived: map['lastRecoveryPointReceived'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      lastUpdateReceivedTime: map['lastUpdateReceivedTime'] == null ? null : map['lastUpdateReceivedTime'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      masterTargetId: map['masterTargetId'] == null ? null : map['masterTargetId'] as String,
      multiVmGroupId: map['multiVmGroupId'] == null ? null : map['multiVmGroupId'] as String,
      multiVmGroupName: map['multiVmGroupName'] == null ? null : map['multiVmGroupName'] as String,
      multiVmSyncStatus: map['multiVmSyncStatus'] == null ? null : map['multiVmSyncStatus'] as String,
      osDiskId: map['osDiskId'] == null ? null : map['osDiskId'] as String,
      osName: map['osName'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
      processServerId: map['processServerId'] == null ? null : map['processServerId'] as String,
      processServerName: map['processServerName'] == null ? null : map['processServerName'] as String,
      protectedDisks: map['protectedDisks'] == null ? null : pulumi.Input.decodeList<InMageAzureV2ProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => InMageAzureV2ProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : pulumi.Input.decodeList<InMageAzureV2ManagedDiskDetailsResponse>(map['protectedManagedDisks'], (value) => InMageAzureV2ManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectionStage: map['protectionStage'] == null ? null : map['protectionStage'] as String,
      recoveryAvailabilitySetId: map['recoveryAvailabilitySetId'] == null ? null : map['recoveryAvailabilitySetId'] as String,
      recoveryAzureLogStorageAccountId: map['recoveryAzureLogStorageAccountId'] == null ? null : map['recoveryAzureLogStorageAccountId'] as String,
      recoveryAzureResourceGroupId: map['recoveryAzureResourceGroupId'] == null ? null : map['recoveryAzureResourceGroupId'] as String,
      recoveryAzureStorageAccount: map['recoveryAzureStorageAccount'] == null ? null : map['recoveryAzureStorageAccount'] as String,
      recoveryAzureVMName: map['recoveryAzureVMName'] == null ? null : map['recoveryAzureVMName'] as String,
      recoveryAzureVMSize: map['recoveryAzureVMSize'] == null ? null : map['recoveryAzureVMSize'] as String,
      replicaId: map['replicaId'] == null ? null : map['replicaId'] as String,
      resyncProgressPercentage: map['resyncProgressPercentage'] == null ? null : map['resyncProgressPercentage'] as int,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : (map['seedManagedDiskTags'] as Map).cast<String, String>(),
      selectedRecoveryAzureNetworkId: map['selectedRecoveryAzureNetworkId'] == null ? null : map['selectedRecoveryAzureNetworkId'] as String,
      selectedSourceNicId: map['selectedSourceNicId'] == null ? null : map['selectedSourceNicId'] as String,
      selectedTfoAzureNetworkId: map['selectedTfoAzureNetworkId'] == null ? null : map['selectedTfoAzureNetworkId'] as String,
      sourceVmCpuCount: map['sourceVmCpuCount'] == null ? null : map['sourceVmCpuCount'] as int,
      sourceVmRamSizeInMB: map['sourceVmRamSizeInMB'] == null ? null : map['sourceVmRamSizeInMB'] as int,
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      supportedOSVersions: map['supportedOSVersions'] == null ? null : (map['supportedOSVersions'] as List).cast<String>(),
      switchProviderBlockingErrorDetails: map['switchProviderBlockingErrorDetails'] == null ? null : pulumi.Input.decodeList<InMageAzureV2SwitchProviderBlockingErrorDetailsResponse>(map['switchProviderBlockingErrorDetails'], (value) => InMageAzureV2SwitchProviderBlockingErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      switchProviderDetails: map['switchProviderDetails'] == null ? null : InMageAzureV2SwitchProviderDetailsResponse.fromMap((map['switchProviderDetails'] as Map).cast<String, dynamic>()),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : (map['targetManagedDiskTags'] as Map).cast<String, String>(),
      targetNicTags: map['targetNicTags'] == null ? null : (map['targetNicTags'] as Map).cast<String, String>(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetVmId: map['targetVmId'] == null ? null : map['targetVmId'] as String,
      targetVmTags: map['targetVmTags'] == null ? null : (map['targetVmTags'] as Map).cast<String, String>(),
      totalDataTransferred: map['totalDataTransferred'] == null ? null : map['totalDataTransferred'] as double,
      totalProgressHealth: map['totalProgressHealth'] == null ? null : map['totalProgressHealth'] as String,
      uncompressedDataRateInMB: map['uncompressedDataRateInMB'] == null ? null : map['uncompressedDataRateInMB'] as double,
      useManagedDisks: map['useManagedDisks'] == null ? null : map['useManagedDisks'] as String,
      vCenterInfrastructureId: map['vCenterInfrastructureId'] == null ? null : map['vCenterInfrastructureId'] as String,
      validationErrors: map['validationErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['validationErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      vhdName: map['vhdName'] == null ? null : map['vhdName'] as String,
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics'], (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmProtectionState: map['vmProtectionState'] == null ? null : map['vmProtectionState'] as String,
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : map['vmProtectionStateDescription'] as String,
    );
  }
}

