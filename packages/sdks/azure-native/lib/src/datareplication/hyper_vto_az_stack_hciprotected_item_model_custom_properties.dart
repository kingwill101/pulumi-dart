// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hcidisk_input.dart';
import 'hyper_vto_az_stack_hcinic_input.dart';
import 'protected_item_dynamic_memory_config.dart';

/// HyperV to AzStackHCI Protected item model custom properties.
class HyperVToAzStackHCIProtectedItemModelCustomProperties {
  /// Gets or sets the location of Azure Arc HCI custom location resource.
  final pulumi.Input<String> customLocationRegion;
  /// Gets or sets the list of disks to replicate.
  final pulumi.Input<List<HyperVToAzStackHCIDiskInput>> disksToInclude;
  /// Protected item dynamic memory config.
  final pulumi.Input<ProtectedItemDynamicMemoryConfig?>? dynamicMemoryConfig;
  /// Gets or sets the ARM Id of the discovered machine.
  final pulumi.Input<String> fabricDiscoveryMachineId;
  /// Gets or sets the hypervisor generation of the virtual machine.
  final pulumi.Input<String> hyperVGeneration;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVToAzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets a value indicating whether memory is dynamical.
  final pulumi.Input<bool?>? isDynamicRam;
  /// Gets or sets the list of VM NIC to replicate.
  final pulumi.Input<List<HyperVToAzStackHCINicInput>> nicsToInclude;
  /// Gets or sets the Run As account Id.
  final pulumi.Input<String> runAsAccountId;
  /// Gets or sets the source DRA name.
  final pulumi.Input<String> sourceDraName;
  /// Gets or sets the target storage container ARM Id.
  final pulumi.Input<String> storageContainerId;
  /// Gets or sets the Target Arc Cluster Custom Location ARM Id.
  final pulumi.Input<String> targetArcClusterCustomLocationId;
  /// Gets or sets the target CPU cores.
  final pulumi.Input<int?>? targetCpuCores;
  /// Gets or sets the target DRA name.
  final pulumi.Input<String> targetDraName;
  /// Gets or sets the Target HCI Cluster ARM Id.
  final pulumi.Input<String> targetHciClusterId;
  /// Gets or sets the target memory in mega-bytes.
  final pulumi.Input<int?>? targetMemoryInMegaBytes;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final pulumi.Input<String?>? targetNetworkId;
  /// Gets or sets the target resource group ARM Id.
  final pulumi.Input<String> targetResourceGroupId;
  /// Gets or sets the target VM display name.
  final pulumi.Input<String?>? targetVmName;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final pulumi.Input<String?>? testNetworkId;

  /// Creates a new [HyperVToAzStackHCIProtectedItemModelCustomProperties].
  /// [customLocationRegion] Gets or sets the location of Azure Arc HCI custom location resource.
  /// [disksToInclude] Gets or sets the list of disks to replicate.
  /// [dynamicMemoryConfig] Protected item dynamic memory config.
  /// [fabricDiscoveryMachineId] Gets or sets the ARM Id of the discovered machine.
  /// [hyperVGeneration] Gets or sets the hypervisor generation of the virtual machine.
  /// [instanceType] Gets or sets the instance type.
  /// [isDynamicRam] Gets or sets a value indicating whether memory is dynamical.
  /// [nicsToInclude] Gets or sets the list of VM NIC to replicate.
  /// [runAsAccountId] Gets or sets the Run As account Id.
  /// [sourceDraName] Gets or sets the source DRA name.
  /// [storageContainerId] Gets or sets the target storage container ARM Id.
  /// [targetArcClusterCustomLocationId] Gets or sets the Target Arc Cluster Custom Location ARM Id.
  /// [targetCpuCores] Gets or sets the target CPU cores.
  /// [targetDraName] Gets or sets the target DRA name.
  /// [targetHciClusterId] Gets or sets the Target HCI Cluster ARM Id.
  /// [targetMemoryInMegaBytes] Gets or sets the target memory in mega-bytes.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [targetResourceGroupId] Gets or sets the target resource group ARM Id.
  /// [targetVmName] Gets or sets the target VM display name.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  const HyperVToAzStackHCIProtectedItemModelCustomProperties({
    required this.customLocationRegion,
    required this.disksToInclude,
    this.dynamicMemoryConfig,
    required this.fabricDiscoveryMachineId,
    required this.hyperVGeneration,
    required this.instanceType,
    this.isDynamicRam,
    required this.nicsToInclude,
    required this.runAsAccountId,
    required this.sourceDraName,
    required this.storageContainerId,
    required this.targetArcClusterCustomLocationId,
    this.targetCpuCores,
    required this.targetDraName,
    required this.targetHciClusterId,
    this.targetMemoryInMegaBytes,
    this.targetNetworkId,
    required this.targetResourceGroupId,
    this.targetVmName,
    this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationRegion': customLocationRegion,
      'disksToInclude': pulumi.Input.mapInputValue<List<HyperVToAzStackHCIDiskInput>, List<Map<String, dynamic>>>(disksToInclude, (value) => pulumi.Input.encodeList<HyperVToAzStackHCIDiskInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dynamicMemoryConfig': ?pulumi.Input.mapOptionalInputValue<ProtectedItemDynamicMemoryConfig, Map<String, dynamic>>(dynamicMemoryConfig, (value) => value.toMap()),
      'fabricDiscoveryMachineId': fabricDiscoveryMachineId,
      'hyperVGeneration': hyperVGeneration,
      'instanceType': instanceType,
      'isDynamicRam': ?isDynamicRam,
      'nicsToInclude': pulumi.Input.mapInputValue<List<HyperVToAzStackHCINicInput>, List<Map<String, dynamic>>>(nicsToInclude, (value) => pulumi.Input.encodeList<HyperVToAzStackHCINicInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runAsAccountId': runAsAccountId,
      'sourceDraName': sourceDraName,
      'storageContainerId': storageContainerId,
      'targetArcClusterCustomLocationId': targetArcClusterCustomLocationId,
      'targetCpuCores': ?targetCpuCores,
      'targetDraName': targetDraName,
      'targetHciClusterId': targetHciClusterId,
      'targetMemoryInMegaBytes': ?targetMemoryInMegaBytes,
      'targetNetworkId': ?targetNetworkId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetVmName': ?targetVmName,
      'testNetworkId': ?testNetworkId,
    };
  }

  factory HyperVToAzStackHCIProtectedItemModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIProtectedItemModelCustomProperties(
      customLocationRegion: pulumi.Input.fromValue(map['customLocationRegion'] as String),
      disksToInclude: pulumi.Input.fromValue(pulumi.Input.decodeList<HyperVToAzStackHCIDiskInput>(map['disksToInclude']!, (value) => HyperVToAzStackHCIDiskInput.fromMap((value as Map).cast<String, dynamic>()))),
      dynamicMemoryConfig: (() { final guardedValue = map['dynamicMemoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtectedItemDynamicMemoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fabricDiscoveryMachineId: pulumi.Input.fromValue(map['fabricDiscoveryMachineId'] as String),
      hyperVGeneration: pulumi.Input.fromValue(map['hyperVGeneration'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      isDynamicRam: (() { final guardedValue = map['isDynamicRam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nicsToInclude: pulumi.Input.fromValue(pulumi.Input.decodeList<HyperVToAzStackHCINicInput>(map['nicsToInclude']!, (value) => HyperVToAzStackHCINicInput.fromMap((value as Map).cast<String, dynamic>()))),
      runAsAccountId: pulumi.Input.fromValue(map['runAsAccountId'] as String),
      sourceDraName: pulumi.Input.fromValue(map['sourceDraName'] as String),
      storageContainerId: pulumi.Input.fromValue(map['storageContainerId'] as String),
      targetArcClusterCustomLocationId: pulumi.Input.fromValue(map['targetArcClusterCustomLocationId'] as String),
      targetCpuCores: (() { final guardedValue = map['targetCpuCores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      targetDraName: pulumi.Input.fromValue(map['targetDraName'] as String),
      targetHciClusterId: pulumi.Input.fromValue(map['targetHciClusterId'] as String),
      targetMemoryInMegaBytes: (() { final guardedValue = map['targetMemoryInMegaBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      targetNetworkId: (() { final guardedValue = map['targetNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceGroupId: pulumi.Input.fromValue(map['targetResourceGroupId'] as String),
      targetVmName: (() { final guardedValue = map['targetVmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testNetworkId: (() { final guardedValue = map['testNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
