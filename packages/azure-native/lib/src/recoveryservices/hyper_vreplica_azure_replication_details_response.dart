// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_vm_disk_details_response.dart';
import 'hyper_vreplica_azure_managed_disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'osdetails_response.dart';
import 'osupgrade_supported_versions_response.dart';
import 'security_profile_properties_response.dart';
import 'vmnic_details_response.dart';

/// Hyper V Replica Azure provider specific settings.
class HyperVReplicaAzureReplicationDetailsResponse {
  /// A value indicating all available inplace OS Upgrade configurations.
  final List<OSUpgradeSupportedVersionsResponse>? allAvailableOSUpgradeConfigurations;
  /// Azure VM Disk details.
  final List<AzureVmDiskDetailsResponse>? azureVmDiskDetails;
  /// The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final String? enableRdpOnTargetOption;
  /// The encryption info.
  final String? encryption;
  /// Initial replication details.
  final InitialReplicationDetailsResponse? initialReplicationDetails;
  /// Gets the Instance type.
  /// Expected value is 'HyperVReplicaAzure'.
  final String instanceType;
  /// The last recovery point received time.
  final String lastRecoveryPointReceived;
  /// The Last replication time.
  final String? lastReplicatedTime;
  /// The last RPO calculated time.
  final String? lastRpoCalculatedTime;
  /// License Type of the VM to be used.
  final String? licenseType;
  /// The license type for Linux VM's.
  final String? linuxLicenseType;
  /// The operating system info.
  final OSDetailsResponse? oSDetails;
  /// The list of protected managed disks.
  final List<HyperVReplicaAzureManagedDiskDetailsResponse>? protectedManagedDisks;
  /// The recovery availability set Id.
  final String? recoveryAvailabilitySetId;
  /// The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  final String? recoveryAzureLogStorageAccountId;
  /// The target resource group Id.
  final String? recoveryAzureResourceGroupId;
  /// The recovery Azure storage account.
  final String? recoveryAzureStorageAccount;
  /// The Recovery Azure VM size.
  final String? recoveryAzureVMSize;
  /// Recovery Azure given name.
  final String? recoveryAzureVmName;
  /// Last RPO value.
  final double? rpoInSeconds;
  /// The tags for the seed managed disks.
  final Map<String, String>? seedManagedDiskTags;
  /// The selected recovery azure network Id.
  final String? selectedRecoveryAzureNetworkId;
  /// The selected source nic Id which will be used as the primary nic during failover.
  final String? selectedSourceNicId;
  /// The CPU count of the VM on the primary side.
  final int? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final int? sourceVmRamSizeInMB;
  /// The SQL Server license type.
  final String? sqlServerLicenseType;
  /// The target availability zone.
  final String? targetAvailabilityZone;
  /// The tags for the target managed disks.
  final Map<String, String>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final Map<String, String>? targetNicTags;
  /// The target proximity placement group Id.
  final String? targetProximityPlacementGroupId;
  /// The target VM security profile.
  final SecurityProfilePropertiesResponse? targetVmSecurityProfile;
  /// The target VM tags.
  final Map<String, String>? targetVmTags;
  /// A value indicating whether managed disks should be used during failover.
  final String? useManagedDisks;
  /// The virtual machine Id.
  final String? vmId;
  /// The PE Network details.
  final List<VMNicDetailsResponse>? vmNics;
  /// The protection state for the vm.
  final String? vmProtectionState;
  /// The protection state description for the vm.
  final String? vmProtectionStateDescription;

  /// Creates a new [HyperVReplicaAzureReplicationDetailsResponse].
  /// [allAvailableOSUpgradeConfigurations] A value indicating all available inplace OS Upgrade configurations.
  /// [azureVmDiskDetails] Azure VM Disk details.
  /// [enableRdpOnTargetOption] The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  /// [encryption] The encryption info.
  /// [initialReplicationDetails] Initial replication details.
  /// [instanceType] Gets the Instance type.
  /// [lastRecoveryPointReceived] The last recovery point received time.
  /// [lastReplicatedTime] The Last replication time.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [licenseType] License Type of the VM to be used.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [oSDetails] The operating system info.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [recoveryAvailabilitySetId] The recovery availability set Id.
  /// [recoveryAzureLogStorageAccountId] The ARM id of the log storage account used for replication. This will be set to null if no log storage account was provided during enable protection.
  /// [recoveryAzureResourceGroupId] The target resource group Id.
  /// [recoveryAzureStorageAccount] The recovery Azure storage account.
  /// [recoveryAzureVMSize] The Recovery Azure VM size.
  /// [recoveryAzureVmName] Recovery Azure given name.
  /// [rpoInSeconds] Last RPO value.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [selectedRecoveryAzureNetworkId] The selected recovery azure network Id.
  /// [selectedSourceNicId] The selected source nic Id which will be used as the primary nic during failover.
  /// [sourceVmCpuCount] The CPU count of the VM on the primary side.
  /// [sourceVmRamSizeInMB] The RAM size of the VM on the primary side.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmTags] The target VM tags.
  /// [useManagedDisks] A value indicating whether managed disks should be used during failover.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  HyperVReplicaAzureReplicationDetailsResponse({
    this.allAvailableOSUpgradeConfigurations,
    this.azureVmDiskDetails,
    this.enableRdpOnTargetOption,
    this.encryption,
    this.initialReplicationDetails,
    required this.instanceType,
    required this.lastRecoveryPointReceived,
    this.lastReplicatedTime,
    this.lastRpoCalculatedTime,
    this.licenseType,
    this.linuxLicenseType,
    this.oSDetails,
    this.protectedManagedDisks,
    this.recoveryAvailabilitySetId,
    this.recoveryAzureLogStorageAccountId,
    this.recoveryAzureResourceGroupId,
    this.recoveryAzureStorageAccount,
    this.recoveryAzureVMSize,
    this.recoveryAzureVmName,
    this.rpoInSeconds,
    this.seedManagedDiskTags,
    this.selectedRecoveryAzureNetworkId,
    this.selectedSourceNicId,
    this.sourceVmCpuCount,
    this.sourceVmRamSizeInMB,
    this.sqlServerLicenseType,
    this.targetAvailabilityZone,
    this.targetManagedDiskTags,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetVmSecurityProfile,
    this.targetVmTags,
    this.useManagedDisks,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailableOSUpgradeConfigurations': ?allAvailableOSUpgradeConfigurations == null ? null : pulumi.Input.encodeList<OSUpgradeSupportedVersionsResponse, Map<String, dynamic>>(allAvailableOSUpgradeConfigurations!, (value) => value.toMap()),
      'azureVmDiskDetails': ?azureVmDiskDetails == null ? null : pulumi.Input.encodeList<AzureVmDiskDetailsResponse, Map<String, dynamic>>(azureVmDiskDetails!, (value) => value.toMap()),
      'enableRdpOnTargetOption': ?enableRdpOnTargetOption,
      'encryption': ?encryption,
      'initialReplicationDetails': ?initialReplicationDetails == null ? null : initialReplicationDetails!.toMap(),
      'instanceType': instanceType,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastReplicatedTime': ?lastReplicatedTime,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'oSDetails': ?oSDetails == null ? null : oSDetails!.toMap(),
      'protectedManagedDisks': ?protectedManagedDisks == null ? null : pulumi.Input.encodeList<HyperVReplicaAzureManagedDiskDetailsResponse, Map<String, dynamic>>(protectedManagedDisks!, (value) => value.toMap()),
      'recoveryAvailabilitySetId': ?recoveryAvailabilitySetId,
      'recoveryAzureLogStorageAccountId': ?recoveryAzureLogStorageAccountId,
      'recoveryAzureResourceGroupId': ?recoveryAzureResourceGroupId,
      'recoveryAzureStorageAccount': ?recoveryAzureStorageAccount,
      'recoveryAzureVMSize': ?recoveryAzureVMSize,
      'recoveryAzureVmName': ?recoveryAzureVmName,
      'rpoInSeconds': ?rpoInSeconds,
      'seedManagedDiskTags': ?seedManagedDiskTags,
      'selectedRecoveryAzureNetworkId': ?selectedRecoveryAzureNetworkId,
      'selectedSourceNicId': ?selectedSourceNicId,
      'sourceVmCpuCount': ?sourceVmCpuCount,
      'sourceVmRamSizeInMB': ?sourceVmRamSizeInMB,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetManagedDiskTags': ?targetManagedDiskTags,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetVmSecurityProfile': ?targetVmSecurityProfile == null ? null : targetVmSecurityProfile!.toMap(),
      'targetVmTags': ?targetVmTags,
      'useManagedDisks': ?useManagedDisks,
      'vmId': ?vmId,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory HyperVReplicaAzureReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzureReplicationDetailsResponse(
      allAvailableOSUpgradeConfigurations: map['allAvailableOSUpgradeConfigurations'] == null ? null : pulumi.Input.decodeList<OSUpgradeSupportedVersionsResponse>(map['allAvailableOSUpgradeConfigurations'], (value) => OSUpgradeSupportedVersionsResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureVmDiskDetails: map['azureVmDiskDetails'] == null ? null : pulumi.Input.decodeList<AzureVmDiskDetailsResponse>(map['azureVmDiskDetails'], (value) => AzureVmDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableRdpOnTargetOption: map['enableRdpOnTargetOption'] == null ? null : map['enableRdpOnTargetOption'] as String,
      encryption: map['encryption'] == null ? null : map['encryption'] as String,
      initialReplicationDetails: map['initialReplicationDetails'] == null ? null : InitialReplicationDetailsResponse.fromMap((map['initialReplicationDetails'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      lastRecoveryPointReceived: map['lastRecoveryPointReceived'] as String,
      lastReplicatedTime: map['lastReplicatedTime'] == null ? null : map['lastReplicatedTime'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      linuxLicenseType: map['linuxLicenseType'] == null ? null : map['linuxLicenseType'] as String,
      oSDetails: map['oSDetails'] == null ? null : OSDetailsResponse.fromMap((map['oSDetails'] as Map).cast<String, dynamic>()),
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : pulumi.Input.decodeList<HyperVReplicaAzureManagedDiskDetailsResponse>(map['protectedManagedDisks'], (value) => HyperVReplicaAzureManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      recoveryAvailabilitySetId: map['recoveryAvailabilitySetId'] == null ? null : map['recoveryAvailabilitySetId'] as String,
      recoveryAzureLogStorageAccountId: map['recoveryAzureLogStorageAccountId'] == null ? null : map['recoveryAzureLogStorageAccountId'] as String,
      recoveryAzureResourceGroupId: map['recoveryAzureResourceGroupId'] == null ? null : map['recoveryAzureResourceGroupId'] as String,
      recoveryAzureStorageAccount: map['recoveryAzureStorageAccount'] == null ? null : map['recoveryAzureStorageAccount'] as String,
      recoveryAzureVMSize: map['recoveryAzureVMSize'] == null ? null : map['recoveryAzureVMSize'] as String,
      recoveryAzureVmName: map['recoveryAzureVmName'] == null ? null : map['recoveryAzureVmName'] as String,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : (map['seedManagedDiskTags'] as Map).cast<String, String>(),
      selectedRecoveryAzureNetworkId: map['selectedRecoveryAzureNetworkId'] == null ? null : map['selectedRecoveryAzureNetworkId'] as String,
      selectedSourceNicId: map['selectedSourceNicId'] == null ? null : map['selectedSourceNicId'] as String,
      sourceVmCpuCount: map['sourceVmCpuCount'] == null ? null : map['sourceVmCpuCount'] as int,
      sourceVmRamSizeInMB: map['sourceVmRamSizeInMB'] == null ? null : map['sourceVmRamSizeInMB'] as int,
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : (map['targetManagedDiskTags'] as Map).cast<String, String>(),
      targetNicTags: map['targetNicTags'] == null ? null : (map['targetNicTags'] as Map).cast<String, String>(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : SecurityProfilePropertiesResponse.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>()),
      targetVmTags: map['targetVmTags'] == null ? null : (map['targetVmTags'] as Map).cast<String, String>(),
      useManagedDisks: map['useManagedDisks'] == null ? null : map['useManagedDisks'] as String,
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics'], (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmProtectionState: map['vmProtectionState'] == null ? null : map['vmProtectionState'] as String,
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : map['vmProtectionStateDescription'] as String,
    );
  }
}

