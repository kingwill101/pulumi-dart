// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_item_dynamic_memory_config_response.dart';
import 'vmware_to_az_stack_hcidisk_input_response.dart';
import 'vmware_to_az_stack_hcinic_input_response.dart';
import 'vmware_to_az_stack_hciprotected_disk_properties_response.dart';
import 'vmware_to_az_stack_hciprotected_nic_properties_response.dart';

/// VMware to AzStackHCI Protected item model custom properties.
class VMwareToAzStackHCIProtectedItemModelCustomPropertiesResponse {
  /// Gets or sets the location of the protected item.
  final pulumi.Input<String> activeLocation;
  /// Gets or sets the location of Azure Arc HCI custom location resource.
  final pulumi.Input<String> customLocationRegion;
  /// Gets or sets the list of disks to replicate.
  final pulumi.Input<List<VMwareToAzStackHCIDiskInputResponse>> disksToInclude;
  /// Protected item dynamic memory config.
  final pulumi.Input<ProtectedItemDynamicMemoryConfigResponse>? dynamicMemoryConfig;
  /// Gets or sets the ARM Id of the discovered machine.
  final pulumi.Input<String> fabricDiscoveryMachineId;
  /// Gets or sets the recovery point Id to which the VM was failed over.
  final pulumi.Input<String> failoverRecoveryPointId;
  /// Gets or sets the firmware type.
  final pulumi.Input<String> firmwareType;
  /// Gets or sets the hypervisor generation of the virtual machine possible values are 1,2.
  final pulumi.Input<String> hyperVGeneration;
  /// Gets or sets the initial replication progress percentage. This is calculated based on
  /// total bytes processed for all disks in the source VM.
  final pulumi.Input<int> initialReplicationProgressPercentage;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareToAzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets a value indicating whether memory is dynamical.
  final pulumi.Input<bool>? isDynamicRam;
  /// Gets or sets the last recovery point Id.
  final pulumi.Input<String> lastRecoveryPointId;
  /// Gets or sets the last recovery point received time.
  final pulumi.Input<String> lastRecoveryPointReceived;
  /// Gets or sets the latest timestamp that replication status is updated.
  final pulumi.Input<String> lastReplicationUpdateTime;
  /// Gets or sets the migration progress percentage.
  final pulumi.Input<int> migrationProgressPercentage;
  /// Gets or sets the list of VM NIC to replicate.
  final pulumi.Input<List<VMwareToAzStackHCINicInputResponse>> nicsToInclude;
  /// Gets or sets the name of the OS.
  final pulumi.Input<String> osName;
  /// Gets or sets the type of the OS.
  final pulumi.Input<String> osType;
  /// Gets or sets a value indicating whether auto resync is to be done.
  final pulumi.Input<bool>? performAutoResync;
  /// Gets or sets the list of protected disks.
  final pulumi.Input<List<VMwareToAzStackHCIProtectedDiskPropertiesResponse>> protectedDisks;
  /// Gets or sets the VM NIC details.
  final pulumi.Input<List<VMwareToAzStackHCIProtectedNicPropertiesResponse>> protectedNics;
  /// Gets or sets the resume progress percentage.
  final pulumi.Input<int> resumeProgressPercentage;
  /// Gets or sets the resume retry count.
  final pulumi.Input<double> resumeRetryCount;
  /// Gets or sets the resync progress percentage. This is calculated based on total bytes
  /// processed for all disks in the source VM.
  final pulumi.Input<int> resyncProgressPercentage;
  /// Gets or sets a value indicating whether resync is required.
  final pulumi.Input<bool> resyncRequired;
  /// Gets or sets the resync retry count.
  final pulumi.Input<double> resyncRetryCount;
  /// Gets or sets the resync state.
  final pulumi.Input<String> resyncState;
  /// Gets or sets the run as account Id.
  final pulumi.Input<String> runAsAccountId;
  /// Gets or sets the source appliance name.
  final pulumi.Input<String> sourceApplianceName;
  /// Gets or sets the source VM CPU cores.
  final pulumi.Input<int> sourceCpuCores;
  /// Gets or sets the source DRA name.
  final pulumi.Input<String> sourceDraName;
  /// Gets or sets the source VM ram memory size in megabytes.
  final pulumi.Input<double> sourceMemoryInMegaBytes;
  /// Gets or sets the source VM display name.
  final pulumi.Input<String> sourceVmName;
  /// Gets or sets the target storage container ARM Id.
  final pulumi.Input<String> storageContainerId;
  /// Gets or sets the target appliance name.
  final pulumi.Input<String> targetApplianceName;
  /// Gets or sets the Target Arc Cluster Custom Location ARM Id.
  final pulumi.Input<String> targetArcClusterCustomLocationId;
  /// Gets or sets the Target AzStackHCI cluster name.
  final pulumi.Input<String> targetAzStackHciClusterName;
  /// Gets or sets the target CPU cores.
  final pulumi.Input<int>? targetCpuCores;
  /// Gets or sets the target DRA name.
  final pulumi.Input<String> targetDraName;
  /// Gets or sets the Target HCI Cluster ARM Id.
  final pulumi.Input<String> targetHciClusterId;
  /// Gets or sets the target location.
  final pulumi.Input<String> targetLocation;
  /// Gets or sets the target memory in mega-bytes.
  final pulumi.Input<int>? targetMemoryInMegaBytes;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final pulumi.Input<String>? targetNetworkId;
  /// Gets or sets the target resource group ARM Id.
  final pulumi.Input<String> targetResourceGroupId;
  /// Gets or sets the BIOS Id of the target AzStackHCI VM.
  final pulumi.Input<String> targetVmBiosId;
  /// Gets or sets the target VM display name.
  final pulumi.Input<String>? targetVmName;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final pulumi.Input<String>? testNetworkId;

  /// Creates a new [VMwareToAzStackHCIProtectedItemModelCustomPropertiesResponse].
  /// [activeLocation] Gets or sets the location of the protected item.
  /// [customLocationRegion] Gets or sets the location of Azure Arc HCI custom location resource.
  /// [disksToInclude] Gets or sets the list of disks to replicate.
  /// [dynamicMemoryConfig] Protected item dynamic memory config.
  /// [fabricDiscoveryMachineId] Gets or sets the ARM Id of the discovered machine.
  /// [failoverRecoveryPointId] Gets or sets the recovery point Id to which the VM was failed over.
  /// [firmwareType] Gets or sets the firmware type.
  /// [hyperVGeneration] Gets or sets the hypervisor generation of the virtual machine possible values are 1,2.
  /// [initialReplicationProgressPercentage] Gets or sets the initial replication progress percentage. This is calculated based on
  /// [instanceType] Gets or sets the instance type.
  /// [isDynamicRam] Gets or sets a value indicating whether memory is dynamical.
  /// [lastRecoveryPointId] Gets or sets the last recovery point Id.
  /// [lastRecoveryPointReceived] Gets or sets the last recovery point received time.
  /// [lastReplicationUpdateTime] Gets or sets the latest timestamp that replication status is updated.
  /// [migrationProgressPercentage] Gets or sets the migration progress percentage.
  /// [nicsToInclude] Gets or sets the list of VM NIC to replicate.
  /// [osName] Gets or sets the name of the OS.
  /// [osType] Gets or sets the type of the OS.
  /// [performAutoResync] Gets or sets a value indicating whether auto resync is to be done.
  /// [protectedDisks] Gets or sets the list of protected disks.
  /// [protectedNics] Gets or sets the VM NIC details.
  /// [resumeProgressPercentage] Gets or sets the resume progress percentage.
  /// [resumeRetryCount] Gets or sets the resume retry count.
  /// [resyncProgressPercentage] Gets or sets the resync progress percentage. This is calculated based on total bytes
  /// [resyncRequired] Gets or sets a value indicating whether resync is required.
  /// [resyncRetryCount] Gets or sets the resync retry count.
  /// [resyncState] Gets or sets the resync state.
  /// [runAsAccountId] Gets or sets the run as account Id.
  /// [sourceApplianceName] Gets or sets the source appliance name.
  /// [sourceCpuCores] Gets or sets the source VM CPU cores.
  /// [sourceDraName] Gets or sets the source DRA name.
  /// [sourceMemoryInMegaBytes] Gets or sets the source VM ram memory size in megabytes.
  /// [sourceVmName] Gets or sets the source VM display name.
  /// [storageContainerId] Gets or sets the target storage container ARM Id.
  /// [targetApplianceName] Gets or sets the target appliance name.
  /// [targetArcClusterCustomLocationId] Gets or sets the Target Arc Cluster Custom Location ARM Id.
  /// [targetAzStackHciClusterName] Gets or sets the Target AzStackHCI cluster name.
  /// [targetCpuCores] Gets or sets the target CPU cores.
  /// [targetDraName] Gets or sets the target DRA name.
  /// [targetHciClusterId] Gets or sets the Target HCI Cluster ARM Id.
  /// [targetLocation] Gets or sets the target location.
  /// [targetMemoryInMegaBytes] Gets or sets the target memory in mega-bytes.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [targetResourceGroupId] Gets or sets the target resource group ARM Id.
  /// [targetVmBiosId] Gets or sets the BIOS Id of the target AzStackHCI VM.
  /// [targetVmName] Gets or sets the target VM display name.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  VMwareToAzStackHCIProtectedItemModelCustomPropertiesResponse({
    required this.activeLocation,
    required this.customLocationRegion,
    required this.disksToInclude,
    this.dynamicMemoryConfig,
    required this.fabricDiscoveryMachineId,
    required this.failoverRecoveryPointId,
    required this.firmwareType,
    required this.hyperVGeneration,
    required this.initialReplicationProgressPercentage,
    required this.instanceType,
    this.isDynamicRam,
    required this.lastRecoveryPointId,
    required this.lastRecoveryPointReceived,
    required this.lastReplicationUpdateTime,
    required this.migrationProgressPercentage,
    required this.nicsToInclude,
    required this.osName,
    required this.osType,
    this.performAutoResync,
    required this.protectedDisks,
    required this.protectedNics,
    required this.resumeProgressPercentage,
    required this.resumeRetryCount,
    required this.resyncProgressPercentage,
    required this.resyncRequired,
    required this.resyncRetryCount,
    required this.resyncState,
    required this.runAsAccountId,
    required this.sourceApplianceName,
    required this.sourceCpuCores,
    required this.sourceDraName,
    required this.sourceMemoryInMegaBytes,
    required this.sourceVmName,
    required this.storageContainerId,
    required this.targetApplianceName,
    required this.targetArcClusterCustomLocationId,
    required this.targetAzStackHciClusterName,
    this.targetCpuCores,
    required this.targetDraName,
    required this.targetHciClusterId,
    required this.targetLocation,
    this.targetMemoryInMegaBytes,
    this.targetNetworkId,
    required this.targetResourceGroupId,
    required this.targetVmBiosId,
    this.targetVmName,
    this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocation': activeLocation,
      'customLocationRegion': customLocationRegion,
      'disksToInclude': pulumi.Input.mapInputValue<List<VMwareToAzStackHCIDiskInputResponse>, List<Map<String, dynamic>>>(disksToInclude, (value) => pulumi.Input.encodeList<VMwareToAzStackHCIDiskInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dynamicMemoryConfig': ?pulumi.Input.mapOptionalInputValue<ProtectedItemDynamicMemoryConfigResponse, Map<String, dynamic>>(dynamicMemoryConfig, (value) => value.toMap()),
      'fabricDiscoveryMachineId': fabricDiscoveryMachineId,
      'failoverRecoveryPointId': failoverRecoveryPointId,
      'firmwareType': firmwareType,
      'hyperVGeneration': hyperVGeneration,
      'initialReplicationProgressPercentage': initialReplicationProgressPercentage,
      'instanceType': instanceType,
      'isDynamicRam': ?isDynamicRam,
      'lastRecoveryPointId': lastRecoveryPointId,
      'lastRecoveryPointReceived': lastRecoveryPointReceived,
      'lastReplicationUpdateTime': lastReplicationUpdateTime,
      'migrationProgressPercentage': migrationProgressPercentage,
      'nicsToInclude': pulumi.Input.mapInputValue<List<VMwareToAzStackHCINicInputResponse>, List<Map<String, dynamic>>>(nicsToInclude, (value) => pulumi.Input.encodeList<VMwareToAzStackHCINicInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osName': osName,
      'osType': osType,
      'performAutoResync': ?performAutoResync,
      'protectedDisks': pulumi.Input.mapInputValue<List<VMwareToAzStackHCIProtectedDiskPropertiesResponse>, List<Map<String, dynamic>>>(protectedDisks, (value) => pulumi.Input.encodeList<VMwareToAzStackHCIProtectedDiskPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedNics': pulumi.Input.mapInputValue<List<VMwareToAzStackHCIProtectedNicPropertiesResponse>, List<Map<String, dynamic>>>(protectedNics, (value) => pulumi.Input.encodeList<VMwareToAzStackHCIProtectedNicPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resumeProgressPercentage': resumeProgressPercentage,
      'resumeRetryCount': resumeRetryCount,
      'resyncProgressPercentage': resyncProgressPercentage,
      'resyncRequired': resyncRequired,
      'resyncRetryCount': resyncRetryCount,
      'resyncState': resyncState,
      'runAsAccountId': runAsAccountId,
      'sourceApplianceName': sourceApplianceName,
      'sourceCpuCores': sourceCpuCores,
      'sourceDraName': sourceDraName,
      'sourceMemoryInMegaBytes': sourceMemoryInMegaBytes,
      'sourceVmName': sourceVmName,
      'storageContainerId': storageContainerId,
      'targetApplianceName': targetApplianceName,
      'targetArcClusterCustomLocationId': targetArcClusterCustomLocationId,
      'targetAzStackHciClusterName': targetAzStackHciClusterName,
      'targetCpuCores': ?targetCpuCores,
      'targetDraName': targetDraName,
      'targetHciClusterId': targetHciClusterId,
      'targetLocation': targetLocation,
      'targetMemoryInMegaBytes': ?targetMemoryInMegaBytes,
      'targetNetworkId': ?targetNetworkId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetVmBiosId': targetVmBiosId,
      'targetVmName': ?targetVmName,
      'testNetworkId': ?testNetworkId,
    };
  }

  factory VMwareToAzStackHCIProtectedItemModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIProtectedItemModelCustomPropertiesResponse(
      activeLocation: (map['activeLocation'] as String).input(),
      customLocationRegion: (map['customLocationRegion'] as String).input(),
      disksToInclude: (pulumi.Input.decodeList<VMwareToAzStackHCIDiskInputResponse>(map['disksToInclude'], (value) => VMwareToAzStackHCIDiskInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dynamicMemoryConfig: map['dynamicMemoryConfig'] == null ? null : (ProtectedItemDynamicMemoryConfigResponse.fromMap((map['dynamicMemoryConfig'] as Map).cast<String, dynamic>())).input(),
      fabricDiscoveryMachineId: (map['fabricDiscoveryMachineId'] as String).input(),
      failoverRecoveryPointId: (map['failoverRecoveryPointId'] as String).input(),
      firmwareType: (map['firmwareType'] as String).input(),
      hyperVGeneration: (map['hyperVGeneration'] as String).input(),
      initialReplicationProgressPercentage: (map['initialReplicationProgressPercentage'] as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      isDynamicRam: map['isDynamicRam'] == null ? null : (map['isDynamicRam'] as bool).input(),
      lastRecoveryPointId: (map['lastRecoveryPointId'] as String).input(),
      lastRecoveryPointReceived: (map['lastRecoveryPointReceived'] as String).input(),
      lastReplicationUpdateTime: (map['lastReplicationUpdateTime'] as String).input(),
      migrationProgressPercentage: (map['migrationProgressPercentage'] as int).input(),
      nicsToInclude: (pulumi.Input.decodeList<VMwareToAzStackHCINicInputResponse>(map['nicsToInclude'], (value) => VMwareToAzStackHCINicInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osName: (map['osName'] as String).input(),
      osType: (map['osType'] as String).input(),
      performAutoResync: map['performAutoResync'] == null ? null : (map['performAutoResync'] as bool).input(),
      protectedDisks: (pulumi.Input.decodeList<VMwareToAzStackHCIProtectedDiskPropertiesResponse>(map['protectedDisks'], (value) => VMwareToAzStackHCIProtectedDiskPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectedNics: (pulumi.Input.decodeList<VMwareToAzStackHCIProtectedNicPropertiesResponse>(map['protectedNics'], (value) => VMwareToAzStackHCIProtectedNicPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resumeProgressPercentage: (map['resumeProgressPercentage'] as int).input(),
      resumeRetryCount: (map['resumeRetryCount'] as double).input(),
      resyncProgressPercentage: (map['resyncProgressPercentage'] as int).input(),
      resyncRequired: (map['resyncRequired'] as bool).input(),
      resyncRetryCount: (map['resyncRetryCount'] as double).input(),
      resyncState: (map['resyncState'] as String).input(),
      runAsAccountId: (map['runAsAccountId'] as String).input(),
      sourceApplianceName: (map['sourceApplianceName'] as String).input(),
      sourceCpuCores: (map['sourceCpuCores'] as int).input(),
      sourceDraName: (map['sourceDraName'] as String).input(),
      sourceMemoryInMegaBytes: (map['sourceMemoryInMegaBytes'] as double).input(),
      sourceVmName: (map['sourceVmName'] as String).input(),
      storageContainerId: (map['storageContainerId'] as String).input(),
      targetApplianceName: (map['targetApplianceName'] as String).input(),
      targetArcClusterCustomLocationId: (map['targetArcClusterCustomLocationId'] as String).input(),
      targetAzStackHciClusterName: (map['targetAzStackHciClusterName'] as String).input(),
      targetCpuCores: map['targetCpuCores'] == null ? null : (map['targetCpuCores'] as int).input(),
      targetDraName: (map['targetDraName'] as String).input(),
      targetHciClusterId: (map['targetHciClusterId'] as String).input(),
      targetLocation: (map['targetLocation'] as String).input(),
      targetMemoryInMegaBytes: map['targetMemoryInMegaBytes'] == null ? null : (map['targetMemoryInMegaBytes'] as int).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId'] as String).input(),
      targetResourceGroupId: (map['targetResourceGroupId'] as String).input(),
      targetVmBiosId: (map['targetVmBiosId'] as String).input(),
      targetVmName: map['targetVmName'] == null ? null : (map['targetVmName'] as String).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId'] as String).input(),
    );
  }
}

