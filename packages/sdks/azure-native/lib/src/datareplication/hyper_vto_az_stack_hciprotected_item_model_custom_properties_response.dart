// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hcidisk_input_response.dart';
import 'hyper_vto_az_stack_hcinic_input_response.dart';
import 'hyper_vto_az_stack_hciprotected_disk_properties_response.dart';
import 'hyper_vto_az_stack_hciprotected_nic_properties_response.dart';
import 'protected_item_dynamic_memory_config_response.dart';

/// HyperV to AzStackHCI Protected item model custom properties.
class HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse {
  /// Gets or sets the location of the protected item.
  final String activeLocation;
  /// Gets or sets the location of Azure Arc HCI custom location resource.
  final String customLocationRegion;
  /// Gets or sets the list of disks to replicate.
  final List<HyperVToAzStackHCIDiskInputResponse> disksToInclude;
  /// Protected item dynamic memory config.
  final ProtectedItemDynamicMemoryConfigResponse? dynamicMemoryConfig;
  /// Gets or sets the ARM Id of the discovered machine.
  final String fabricDiscoveryMachineId;
  /// Gets or sets the recovery point Id to which the VM was failed over.
  final String failoverRecoveryPointId;
  /// Gets or sets the firmware type.
  final String firmwareType;
  /// Gets or sets the hypervisor generation of the virtual machine.
  final String hyperVGeneration;
  /// Gets or sets the initial replication progress percentage. This is calculated based on
  /// total bytes processed for all disks in the source VM.
  final int initialReplicationProgressPercentage;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVToAzStackHCI'.
  final String instanceType;
  /// Gets or sets a value indicating whether memory is dynamical.
  final bool? isDynamicRam;
  /// Gets or sets the last recovery point Id.
  final String lastRecoveryPointId;
  /// Gets or sets the last recovery point received time.
  final String lastRecoveryPointReceived;
  /// Gets or sets the latest timestamp that replication status is updated.
  final String lastReplicationUpdateTime;
  /// Gets or sets the list of VM NIC to replicate.
  final List<HyperVToAzStackHCINicInputResponse> nicsToInclude;
  /// Gets or sets the name of the OS.
  final String osName;
  /// Gets or sets the type of the OS.
  final String osType;
  /// Gets or sets the list of protected disks.
  final List<HyperVToAzStackHCIProtectedDiskPropertiesResponse> protectedDisks;
  /// Gets or sets the VM NIC details.
  final List<HyperVToAzStackHCIProtectedNicPropertiesResponse> protectedNics;
  /// Gets or sets the resync progress percentage. This is calculated based on total bytes
  /// processed for all disks in the source VM.
  final int resyncProgressPercentage;
  /// Gets or sets the Run As account Id.
  final String runAsAccountId;
  /// Gets or sets the source appliance name.
  final String sourceApplianceName;
  /// Gets or sets the source VM CPU cores.
  final int sourceCpuCores;
  /// Gets or sets the source DRA name.
  final String sourceDraName;
  /// Gets or sets the source VM ram memory size in megabytes.
  final double sourceMemoryInMegaBytes;
  /// Gets or sets the source VM display name.
  final String sourceVmName;
  /// Gets or sets the target storage container ARM Id.
  final String storageContainerId;
  /// Gets or sets the target appliance name.
  final String targetApplianceName;
  /// Gets or sets the Target Arc Cluster Custom Location ARM Id.
  final String targetArcClusterCustomLocationId;
  /// Gets or sets the Target AzStackHCI cluster name.
  final String targetAzStackHciClusterName;
  /// Gets or sets the target CPU cores.
  final int? targetCpuCores;
  /// Gets or sets the target DRA name.
  final String targetDraName;
  /// Gets or sets the Target HCI Cluster ARM Id.
  final String targetHciClusterId;
  /// Gets or sets the target location.
  final String targetLocation;
  /// Gets or sets the target memory in mega-bytes.
  final int? targetMemoryInMegaBytes;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final String? targetNetworkId;
  /// Gets or sets the target resource group ARM Id.
  final String targetResourceGroupId;
  /// Gets or sets the BIOS Id of the target AzStackHCI VM.
  final String targetVmBiosId;
  /// Gets or sets the target VM display name.
  final String? targetVmName;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final String? testNetworkId;

  /// Creates a new [HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse].
  /// [activeLocation] Gets or sets the location of the protected item.
  /// [customLocationRegion] Gets or sets the location of Azure Arc HCI custom location resource.
  /// [disksToInclude] Gets or sets the list of disks to replicate.
  /// [dynamicMemoryConfig] Protected item dynamic memory config.
  /// [fabricDiscoveryMachineId] Gets or sets the ARM Id of the discovered machine.
  /// [failoverRecoveryPointId] Gets or sets the recovery point Id to which the VM was failed over.
  /// [firmwareType] Gets or sets the firmware type.
  /// [hyperVGeneration] Gets or sets the hypervisor generation of the virtual machine.
  /// [initialReplicationProgressPercentage] Gets or sets the initial replication progress percentage. This is calculated based on
  /// [instanceType] Gets or sets the instance type.
  /// [isDynamicRam] Gets or sets a value indicating whether memory is dynamical.
  /// [lastRecoveryPointId] Gets or sets the last recovery point Id.
  /// [lastRecoveryPointReceived] Gets or sets the last recovery point received time.
  /// [lastReplicationUpdateTime] Gets or sets the latest timestamp that replication status is updated.
  /// [nicsToInclude] Gets or sets the list of VM NIC to replicate.
  /// [osName] Gets or sets the name of the OS.
  /// [osType] Gets or sets the type of the OS.
  /// [protectedDisks] Gets or sets the list of protected disks.
  /// [protectedNics] Gets or sets the VM NIC details.
  /// [resyncProgressPercentage] Gets or sets the resync progress percentage. This is calculated based on total bytes
  /// [runAsAccountId] Gets or sets the Run As account Id.
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
  HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse({
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
    required this.nicsToInclude,
    required this.osName,
    required this.osType,
    required this.protectedDisks,
    required this.protectedNics,
    required this.resyncProgressPercentage,
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
      'disksToInclude': pulumi.Input.encodeList<HyperVToAzStackHCIDiskInputResponse, Map<String, dynamic>>(disksToInclude, (value) => value.toMap()),
      'dynamicMemoryConfig': ?dynamicMemoryConfig == null ? null : dynamicMemoryConfig!.toMap(),
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
      'nicsToInclude': pulumi.Input.encodeList<HyperVToAzStackHCINicInputResponse, Map<String, dynamic>>(nicsToInclude, (value) => value.toMap()),
      'osName': osName,
      'osType': osType,
      'protectedDisks': pulumi.Input.encodeList<HyperVToAzStackHCIProtectedDiskPropertiesResponse, Map<String, dynamic>>(protectedDisks, (value) => value.toMap()),
      'protectedNics': pulumi.Input.encodeList<HyperVToAzStackHCIProtectedNicPropertiesResponse, Map<String, dynamic>>(protectedNics, (value) => value.toMap()),
      'resyncProgressPercentage': resyncProgressPercentage,
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

  factory HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIProtectedItemModelCustomPropertiesResponse(
      activeLocation: map['activeLocation'] as String,
      customLocationRegion: map['customLocationRegion'] as String,
      disksToInclude: pulumi.Input.decodeList<HyperVToAzStackHCIDiskInputResponse>(map['disksToInclude'], (value) => HyperVToAzStackHCIDiskInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      dynamicMemoryConfig: map['dynamicMemoryConfig'] == null ? null : ProtectedItemDynamicMemoryConfigResponse.fromMap((map['dynamicMemoryConfig'] as Map).cast<String, dynamic>()),
      fabricDiscoveryMachineId: map['fabricDiscoveryMachineId'] as String,
      failoverRecoveryPointId: map['failoverRecoveryPointId'] as String,
      firmwareType: map['firmwareType'] as String,
      hyperVGeneration: map['hyperVGeneration'] as String,
      initialReplicationProgressPercentage: map['initialReplicationProgressPercentage'] as int,
      instanceType: map['instanceType'] as String,
      isDynamicRam: map['isDynamicRam'] == null ? null : map['isDynamicRam'] as bool,
      lastRecoveryPointId: map['lastRecoveryPointId'] as String,
      lastRecoveryPointReceived: map['lastRecoveryPointReceived'] as String,
      lastReplicationUpdateTime: map['lastReplicationUpdateTime'] as String,
      nicsToInclude: pulumi.Input.decodeList<HyperVToAzStackHCINicInputResponse>(map['nicsToInclude'], (value) => HyperVToAzStackHCINicInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      osName: map['osName'] as String,
      osType: map['osType'] as String,
      protectedDisks: pulumi.Input.decodeList<HyperVToAzStackHCIProtectedDiskPropertiesResponse>(map['protectedDisks'], (value) => HyperVToAzStackHCIProtectedDiskPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectedNics: pulumi.Input.decodeList<HyperVToAzStackHCIProtectedNicPropertiesResponse>(map['protectedNics'], (value) => HyperVToAzStackHCIProtectedNicPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      resyncProgressPercentage: map['resyncProgressPercentage'] as int,
      runAsAccountId: map['runAsAccountId'] as String,
      sourceApplianceName: map['sourceApplianceName'] as String,
      sourceCpuCores: map['sourceCpuCores'] as int,
      sourceDraName: map['sourceDraName'] as String,
      sourceMemoryInMegaBytes: map['sourceMemoryInMegaBytes'] as double,
      sourceVmName: map['sourceVmName'] as String,
      storageContainerId: map['storageContainerId'] as String,
      targetApplianceName: map['targetApplianceName'] as String,
      targetArcClusterCustomLocationId: map['targetArcClusterCustomLocationId'] as String,
      targetAzStackHciClusterName: map['targetAzStackHciClusterName'] as String,
      targetCpuCores: map['targetCpuCores'] == null ? null : map['targetCpuCores'] as int,
      targetDraName: map['targetDraName'] as String,
      targetHciClusterId: map['targetHciClusterId'] as String,
      targetLocation: map['targetLocation'] as String,
      targetMemoryInMegaBytes: map['targetMemoryInMegaBytes'] == null ? null : map['targetMemoryInMegaBytes'] as int,
      targetNetworkId: map['targetNetworkId'] == null ? null : map['targetNetworkId'] as String,
      targetResourceGroupId: map['targetResourceGroupId'] as String,
      targetVmBiosId: map['targetVmBiosId'] as String,
      targetVmName: map['targetVmName'] == null ? null : map['targetVmName'] as String,
      testNetworkId: map['testNetworkId'] == null ? null : map['testNetworkId'] as String,
    );
  }
}

