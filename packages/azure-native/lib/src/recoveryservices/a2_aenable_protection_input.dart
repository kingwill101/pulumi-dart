// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_avm_disk_input_details.dart';
import 'a2_avm_managed_disk_input_details.dart';
import 'disk_encryption_info.dart';
import 'extended_location.dart';

/// A2A enable protection input.
class A2AEnableProtectionInput {
  /// A value indicating whether the auto protection is enabled.
  final String? autoProtectionOfDataDisk;
  /// The recovery disk encryption information (for two pass flows).
  final DiskEncryptionInfo? diskEncryptionInfo;
  /// The fabric specific object Id of the virtual machine.
  final String fabricObjectId;
  /// The class type.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// The multi vm group id.
  final String? multiVmGroupId;
  /// The multi vm group name.
  final String? multiVmGroupName;
  /// The replication protection cluster Id.
  final String? protectionClusterId;
  /// The recovery availability set Id.
  final String? recoveryAvailabilitySetId;
  /// The recovery availability zone.
  final String? recoveryAvailabilityZone;
  /// The recovery Azure virtual network ARM id.
  final String? recoveryAzureNetworkId;
  /// The boot diagnostic storage account.
  final String? recoveryBootDiagStorageAccountId;
  /// The recovery capacity reservation group Id.
  final String? recoveryCapacityReservationGroupId;
  /// The recovery cloud service Id. Valid for V1 scenarios.
  final String? recoveryCloudServiceId;
  /// The recovery container Id.
  final String? recoveryContainerId;
  /// The recovery extended location.
  final ExtendedLocation? recoveryExtendedLocation;
  /// The recovery proximity placement group Id.
  final String? recoveryProximityPlacementGroupId;
  /// The recovery resource group Id. Valid for V2 scenarios.
  final String? recoveryResourceGroupId;
  /// The recovery subnet name.
  final String? recoverySubnetName;
  /// The virtual machine scale set Id.
  final String? recoveryVirtualMachineScaleSetId;
  /// The list of vm disk details.
  final List<A2AVmDiskInputDetails>? vmDisks;
  /// The list of vm managed disk details.
  final List<A2AVmManagedDiskInputDetails>? vmManagedDisks;

  /// Creates a new [A2AEnableProtectionInput].
  /// [autoProtectionOfDataDisk] A value indicating whether the auto protection is enabled.
  /// [diskEncryptionInfo] The recovery disk encryption information (for two pass flows).
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [instanceType] The class type.
  /// [multiVmGroupId] The multi vm group id.
  /// [multiVmGroupName] The multi vm group name.
  /// [protectionClusterId] The replication protection cluster Id.
  /// [recoveryAvailabilitySetId] The recovery availability set Id.
  /// [recoveryAvailabilityZone] The recovery availability zone.
  /// [recoveryAzureNetworkId] The recovery Azure virtual network ARM id.
  /// [recoveryBootDiagStorageAccountId] The boot diagnostic storage account.
  /// [recoveryCapacityReservationGroupId] The recovery capacity reservation group Id.
  /// [recoveryCloudServiceId] The recovery cloud service Id. Valid for V1 scenarios.
  /// [recoveryContainerId] The recovery container Id.
  /// [recoveryExtendedLocation] The recovery extended location.
  /// [recoveryProximityPlacementGroupId] The recovery proximity placement group Id.
  /// [recoveryResourceGroupId] The recovery resource group Id. Valid for V2 scenarios.
  /// [recoverySubnetName] The recovery subnet name.
  /// [recoveryVirtualMachineScaleSetId] The virtual machine scale set Id.
  /// [vmDisks] The list of vm disk details.
  /// [vmManagedDisks] The list of vm managed disk details.
  A2AEnableProtectionInput({
    this.autoProtectionOfDataDisk,
    this.diskEncryptionInfo,
    required this.fabricObjectId,
    required this.instanceType,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.protectionClusterId,
    this.recoveryAvailabilitySetId,
    this.recoveryAvailabilityZone,
    this.recoveryAzureNetworkId,
    this.recoveryBootDiagStorageAccountId,
    this.recoveryCapacityReservationGroupId,
    this.recoveryCloudServiceId,
    this.recoveryContainerId,
    this.recoveryExtendedLocation,
    this.recoveryProximityPlacementGroupId,
    this.recoveryResourceGroupId,
    this.recoverySubnetName,
    this.recoveryVirtualMachineScaleSetId,
    this.vmDisks,
    this.vmManagedDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProtectionOfDataDisk': ?autoProtectionOfDataDisk,
      'diskEncryptionInfo': ?diskEncryptionInfo == null ? null : diskEncryptionInfo!.toMap(),
      'fabricObjectId': fabricObjectId,
      'instanceType': instanceType,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'protectionClusterId': ?protectionClusterId,
      'recoveryAvailabilitySetId': ?recoveryAvailabilitySetId,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryAzureNetworkId': ?recoveryAzureNetworkId,
      'recoveryBootDiagStorageAccountId': ?recoveryBootDiagStorageAccountId,
      'recoveryCapacityReservationGroupId': ?recoveryCapacityReservationGroupId,
      'recoveryCloudServiceId': ?recoveryCloudServiceId,
      'recoveryContainerId': ?recoveryContainerId,
      'recoveryExtendedLocation': ?recoveryExtendedLocation == null ? null : recoveryExtendedLocation!.toMap(),
      'recoveryProximityPlacementGroupId': ?recoveryProximityPlacementGroupId,
      'recoveryResourceGroupId': ?recoveryResourceGroupId,
      'recoverySubnetName': ?recoverySubnetName,
      'recoveryVirtualMachineScaleSetId': ?recoveryVirtualMachineScaleSetId,
      'vmDisks': ?vmDisks == null ? null : pulumi.Input.encodeList<A2AVmDiskInputDetails, Map<String, dynamic>>(vmDisks!, (value) => value.toMap()),
      'vmManagedDisks': ?vmManagedDisks == null ? null : pulumi.Input.encodeList<A2AVmManagedDiskInputDetails, Map<String, dynamic>>(vmManagedDisks!, (value) => value.toMap()),
    };
  }

  factory A2AEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return A2AEnableProtectionInput(
      autoProtectionOfDataDisk: map['autoProtectionOfDataDisk'] == null ? null : map['autoProtectionOfDataDisk'] as String,
      diskEncryptionInfo: map['diskEncryptionInfo'] == null ? null : DiskEncryptionInfo.fromMap((map['diskEncryptionInfo'] as Map).cast<String, dynamic>()),
      fabricObjectId: map['fabricObjectId'] as String,
      instanceType: map['instanceType'] as String,
      multiVmGroupId: map['multiVmGroupId'] == null ? null : map['multiVmGroupId'] as String,
      multiVmGroupName: map['multiVmGroupName'] == null ? null : map['multiVmGroupName'] as String,
      protectionClusterId: map['protectionClusterId'] == null ? null : map['protectionClusterId'] as String,
      recoveryAvailabilitySetId: map['recoveryAvailabilitySetId'] == null ? null : map['recoveryAvailabilitySetId'] as String,
      recoveryAvailabilityZone: map['recoveryAvailabilityZone'] == null ? null : map['recoveryAvailabilityZone'] as String,
      recoveryAzureNetworkId: map['recoveryAzureNetworkId'] == null ? null : map['recoveryAzureNetworkId'] as String,
      recoveryBootDiagStorageAccountId: map['recoveryBootDiagStorageAccountId'] == null ? null : map['recoveryBootDiagStorageAccountId'] as String,
      recoveryCapacityReservationGroupId: map['recoveryCapacityReservationGroupId'] == null ? null : map['recoveryCapacityReservationGroupId'] as String,
      recoveryCloudServiceId: map['recoveryCloudServiceId'] == null ? null : map['recoveryCloudServiceId'] as String,
      recoveryContainerId: map['recoveryContainerId'] == null ? null : map['recoveryContainerId'] as String,
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : ExtendedLocation.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      recoveryProximityPlacementGroupId: map['recoveryProximityPlacementGroupId'] == null ? null : map['recoveryProximityPlacementGroupId'] as String,
      recoveryResourceGroupId: map['recoveryResourceGroupId'] == null ? null : map['recoveryResourceGroupId'] as String,
      recoverySubnetName: map['recoverySubnetName'] == null ? null : map['recoverySubnetName'] as String,
      recoveryVirtualMachineScaleSetId: map['recoveryVirtualMachineScaleSetId'] == null ? null : map['recoveryVirtualMachineScaleSetId'] as String,
      vmDisks: map['vmDisks'] == null ? null : pulumi.Input.decodeList<A2AVmDiskInputDetails>(map['vmDisks'], (value) => A2AVmDiskInputDetails.fromMap((value as Map).cast<String, dynamic>())),
      vmManagedDisks: map['vmManagedDisks'] == null ? null : pulumi.Input.decodeList<A2AVmManagedDiskInputDetails>(map['vmManagedDisks'], (value) => A2AVmManagedDiskInputDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

