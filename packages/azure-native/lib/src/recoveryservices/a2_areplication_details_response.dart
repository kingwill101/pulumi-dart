// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aprotected_disk_details_response.dart';
import 'a2_aprotected_managed_disk_details_response.dart';
import 'a2_aunprotected_disk_details_response.dart';
import 'azure_to_azure_vm_synced_config_details_response.dart';
import 'extended_location_response.dart';
import 'vmnic_details_response.dart';

/// A2A provider specific settings.
class A2AReplicationDetailsResponse {
  /// Agent certificate expiry date.
  final String agentCertificateExpiryDate;
  /// Agent expiry date.
  final String? agentExpiryDate;
  /// The agent version.
  final String? agentVersion;
  /// A value indicating whether the auto protection is enabled.
  final String? autoProtectionOfDataDisk;
  /// A value indicating the churn option selected by user.
  final String churnOptionSelected;
  /// The fabric specific object Id of the virtual machine.
  final String? fabricObjectId;
  /// The initial primary extended location.
  final ExtendedLocationResponse? initialPrimaryExtendedLocation;
  /// The initial primary fabric location.
  final String initialPrimaryFabricLocation;
  /// The initial primary availability zone.
  final String initialPrimaryZone;
  /// The initial recovery extended location.
  final ExtendedLocationResponse? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location.
  final String initialRecoveryFabricLocation;
  /// The initial recovery availability zone.
  final String initialRecoveryZone;
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// A value indicating if the cluster infra is ready or not.
  final bool? isClusterInfraReady;
  /// A value indicating whether agent certificate update is required.
  final bool? isReplicationAgentCertificateUpdateRequired;
  /// A value indicating whether replication agent update is required.
  final bool? isReplicationAgentUpdateRequired;
  /// The last heartbeat received from the source server.
  final String? lastHeartbeat;
  /// The time (in UTC) when the last RPO value was calculated by Protection Service.
  final String? lastRpoCalculatedTime;
  /// An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  final String? lifecycleId;
  /// The management Id.
  final String? managementId;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final String? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final int? monitoringPercentageCompletion;
  /// Whether Multi VM group is auto created or specified by user.
  final String? multiVmGroupCreateOption;
  /// The multi vm group Id.
  final String? multiVmGroupId;
  /// The multi vm group name.
  final String? multiVmGroupName;
  /// The type of operating system.
  final String? osType;
  /// The primary availability zone.
  final String? primaryAvailabilityZone;
  /// The primary Extended Location.
  final ExtendedLocationResponse? primaryExtendedLocation;
  /// Primary fabric location.
  final String? primaryFabricLocation;
  /// The list of protected disks.
  final List<A2AProtectedDiskDetailsResponse>? protectedDisks;
  /// The list of protected managed disks.
  final List<A2AProtectedManagedDiskDetailsResponse>? protectedManagedDisks;
  /// The replication protection cluster Id.
  final String? protectionClusterId;
  /// The recovery availability set.
  final String? recoveryAvailabilitySet;
  /// The recovery availability zone.
  final String? recoveryAvailabilityZone;
  /// The recovery azure generation.
  final String recoveryAzureGeneration;
  /// The recovery resource group.
  final String? recoveryAzureResourceGroupId;
  /// The name of recovery virtual machine.
  final String? recoveryAzureVMName;
  /// The size of recovery virtual machine.
  final String? recoveryAzureVMSize;
  /// The recovery boot diagnostic storage account Arm Id.
  final String? recoveryBootDiagStorageAccountId;
  /// The recovery capacity reservation group Id.
  final String? recoveryCapacityReservationGroupId;
  /// The recovery cloud service.
  final String? recoveryCloudService;
  /// The recovery Extended Location.
  final ExtendedLocationResponse? recoveryExtendedLocation;
  /// The recovery fabric location.
  final String? recoveryFabricLocation;
  /// The recovery fabric object Id.
  final String? recoveryFabricObjectId;
  /// The recovery proximity placement group Id.
  final String? recoveryProximityPlacementGroupId;
  /// The recovery virtual machine scale set id.
  final String? recoveryVirtualMachineScaleSetId;
  /// The last RPO value in seconds.
  final double? rpoInSeconds;
  /// The recovery virtual network.
  final String? selectedRecoveryAzureNetworkId;
  /// The test failover virtual network.
  final String? selectedTfoAzureNetworkId;
  /// The test failover fabric object Id.
  final String? testFailoverRecoveryFabricObjectId;
  /// The test failover vm name.
  final String? tfoAzureVMName;
  /// The list of unprotected disks.
  final List<A2AUnprotectedDiskDetailsResponse>? unprotectedDisks;
  /// The encryption type of the VM.
  final String vmEncryptionType;
  /// The virtual machine nic details.
  final List<VMNicDetailsResponse>? vmNics;
  /// The protection state for the vm.
  final String? vmProtectionState;
  /// The protection state description for the vm.
  final String? vmProtectionStateDescription;
  /// The synced configuration details.
  final AzureToAzureVmSyncedConfigDetailsResponse? vmSyncedConfigDetails;

  /// Creates a new [A2AReplicationDetailsResponse].
  /// [agentCertificateExpiryDate] Agent certificate expiry date.
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The agent version.
  /// [autoProtectionOfDataDisk] A value indicating whether the auto protection is enabled.
  /// [churnOptionSelected] A value indicating the churn option selected by user.
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [initialPrimaryExtendedLocation] The initial primary extended location.
  /// [initialPrimaryFabricLocation] The initial primary fabric location.
  /// [initialPrimaryZone] The initial primary availability zone.
  /// [initialRecoveryExtendedLocation] The initial recovery extended location.
  /// [initialRecoveryFabricLocation] The initial recovery fabric location.
  /// [initialRecoveryZone] The initial recovery availability zone.
  /// [instanceType] Gets the Instance type.
  /// [isClusterInfraReady] A value indicating if the cluster infra is ready or not.
  /// [isReplicationAgentCertificateUpdateRequired] A value indicating whether agent certificate update is required.
  /// [isReplicationAgentUpdateRequired] A value indicating whether replication agent update is required.
  /// [lastHeartbeat] The last heartbeat received from the source server.
  /// [lastRpoCalculatedTime] The time (in UTC) when the last RPO value was calculated by Protection Service.
  /// [lifecycleId] An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  /// [managementId] The management Id.
  /// [monitoringJobType] The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  /// [monitoringPercentageCompletion] The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  /// [multiVmGroupCreateOption] Whether Multi VM group is auto created or specified by user.
  /// [multiVmGroupId] The multi vm group Id.
  /// [multiVmGroupName] The multi vm group name.
  /// [osType] The type of operating system.
  /// [primaryAvailabilityZone] The primary availability zone.
  /// [primaryExtendedLocation] The primary Extended Location.
  /// [primaryFabricLocation] Primary fabric location.
  /// [protectedDisks] The list of protected disks.
  /// [protectedManagedDisks] The list of protected managed disks.
  /// [protectionClusterId] The replication protection cluster Id.
  /// [recoveryAvailabilitySet] The recovery availability set.
  /// [recoveryAvailabilityZone] The recovery availability zone.
  /// [recoveryAzureGeneration] The recovery azure generation.
  /// [recoveryAzureResourceGroupId] The recovery resource group.
  /// [recoveryAzureVMName] The name of recovery virtual machine.
  /// [recoveryAzureVMSize] The size of recovery virtual machine.
  /// [recoveryBootDiagStorageAccountId] The recovery boot diagnostic storage account Arm Id.
  /// [recoveryCapacityReservationGroupId] The recovery capacity reservation group Id.
  /// [recoveryCloudService] The recovery cloud service.
  /// [recoveryExtendedLocation] The recovery Extended Location.
  /// [recoveryFabricLocation] The recovery fabric location.
  /// [recoveryFabricObjectId] The recovery fabric object Id.
  /// [recoveryProximityPlacementGroupId] The recovery proximity placement group Id.
  /// [recoveryVirtualMachineScaleSetId] The recovery virtual machine scale set id.
  /// [rpoInSeconds] The last RPO value in seconds.
  /// [selectedRecoveryAzureNetworkId] The recovery virtual network.
  /// [selectedTfoAzureNetworkId] The test failover virtual network.
  /// [testFailoverRecoveryFabricObjectId] The test failover fabric object Id.
  /// [tfoAzureVMName] The test failover vm name.
  /// [unprotectedDisks] The list of unprotected disks.
  /// [vmEncryptionType] The encryption type of the VM.
  /// [vmNics] The virtual machine nic details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  /// [vmSyncedConfigDetails] The synced configuration details.
  A2AReplicationDetailsResponse({
    required this.agentCertificateExpiryDate,
    this.agentExpiryDate,
    this.agentVersion,
    this.autoProtectionOfDataDisk,
    required this.churnOptionSelected,
    this.fabricObjectId,
    this.initialPrimaryExtendedLocation,
    required this.initialPrimaryFabricLocation,
    required this.initialPrimaryZone,
    this.initialRecoveryExtendedLocation,
    required this.initialRecoveryFabricLocation,
    required this.initialRecoveryZone,
    required this.instanceType,
    this.isClusterInfraReady,
    this.isReplicationAgentCertificateUpdateRequired,
    this.isReplicationAgentUpdateRequired,
    this.lastHeartbeat,
    this.lastRpoCalculatedTime,
    this.lifecycleId,
    this.managementId,
    this.monitoringJobType,
    this.monitoringPercentageCompletion,
    this.multiVmGroupCreateOption,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.osType,
    this.primaryAvailabilityZone,
    this.primaryExtendedLocation,
    this.primaryFabricLocation,
    this.protectedDisks,
    this.protectedManagedDisks,
    this.protectionClusterId,
    this.recoveryAvailabilitySet,
    this.recoveryAvailabilityZone,
    required this.recoveryAzureGeneration,
    this.recoveryAzureResourceGroupId,
    this.recoveryAzureVMName,
    this.recoveryAzureVMSize,
    this.recoveryBootDiagStorageAccountId,
    this.recoveryCapacityReservationGroupId,
    this.recoveryCloudService,
    this.recoveryExtendedLocation,
    this.recoveryFabricLocation,
    this.recoveryFabricObjectId,
    this.recoveryProximityPlacementGroupId,
    this.recoveryVirtualMachineScaleSetId,
    this.rpoInSeconds,
    this.selectedRecoveryAzureNetworkId,
    this.selectedTfoAzureNetworkId,
    this.testFailoverRecoveryFabricObjectId,
    this.tfoAzureVMName,
    this.unprotectedDisks,
    required this.vmEncryptionType,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
    this.vmSyncedConfigDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCertificateExpiryDate': agentCertificateExpiryDate,
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'autoProtectionOfDataDisk': ?autoProtectionOfDataDisk,
      'churnOptionSelected': churnOptionSelected,
      'fabricObjectId': ?fabricObjectId,
      'initialPrimaryExtendedLocation': ?initialPrimaryExtendedLocation == null ? null : initialPrimaryExtendedLocation!.toMap(),
      'initialPrimaryFabricLocation': initialPrimaryFabricLocation,
      'initialPrimaryZone': initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?initialRecoveryExtendedLocation == null ? null : initialRecoveryExtendedLocation!.toMap(),
      'initialRecoveryFabricLocation': initialRecoveryFabricLocation,
      'initialRecoveryZone': initialRecoveryZone,
      'instanceType': instanceType,
      'isClusterInfraReady': ?isClusterInfraReady,
      'isReplicationAgentCertificateUpdateRequired': ?isReplicationAgentCertificateUpdateRequired,
      'isReplicationAgentUpdateRequired': ?isReplicationAgentUpdateRequired,
      'lastHeartbeat': ?lastHeartbeat,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lifecycleId': ?lifecycleId,
      'managementId': ?managementId,
      'monitoringJobType': ?monitoringJobType,
      'monitoringPercentageCompletion': ?monitoringPercentageCompletion,
      'multiVmGroupCreateOption': ?multiVmGroupCreateOption,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'osType': ?osType,
      'primaryAvailabilityZone': ?primaryAvailabilityZone,
      'primaryExtendedLocation': ?primaryExtendedLocation == null ? null : primaryExtendedLocation!.toMap(),
      'primaryFabricLocation': ?primaryFabricLocation,
      'protectedDisks': ?protectedDisks == null ? null : pulumi.Input.encodeList<A2AProtectedDiskDetailsResponse, Map<String, dynamic>>(protectedDisks!, (value) => value.toMap()),
      'protectedManagedDisks': ?protectedManagedDisks == null ? null : pulumi.Input.encodeList<A2AProtectedManagedDiskDetailsResponse, Map<String, dynamic>>(protectedManagedDisks!, (value) => value.toMap()),
      'protectionClusterId': ?protectionClusterId,
      'recoveryAvailabilitySet': ?recoveryAvailabilitySet,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryAzureGeneration': recoveryAzureGeneration,
      'recoveryAzureResourceGroupId': ?recoveryAzureResourceGroupId,
      'recoveryAzureVMName': ?recoveryAzureVMName,
      'recoveryAzureVMSize': ?recoveryAzureVMSize,
      'recoveryBootDiagStorageAccountId': ?recoveryBootDiagStorageAccountId,
      'recoveryCapacityReservationGroupId': ?recoveryCapacityReservationGroupId,
      'recoveryCloudService': ?recoveryCloudService,
      'recoveryExtendedLocation': ?recoveryExtendedLocation == null ? null : recoveryExtendedLocation!.toMap(),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'recoveryFabricObjectId': ?recoveryFabricObjectId,
      'recoveryProximityPlacementGroupId': ?recoveryProximityPlacementGroupId,
      'recoveryVirtualMachineScaleSetId': ?recoveryVirtualMachineScaleSetId,
      'rpoInSeconds': ?rpoInSeconds,
      'selectedRecoveryAzureNetworkId': ?selectedRecoveryAzureNetworkId,
      'selectedTfoAzureNetworkId': ?selectedTfoAzureNetworkId,
      'testFailoverRecoveryFabricObjectId': ?testFailoverRecoveryFabricObjectId,
      'tfoAzureVMName': ?tfoAzureVMName,
      'unprotectedDisks': ?unprotectedDisks == null ? null : pulumi.Input.encodeList<A2AUnprotectedDiskDetailsResponse, Map<String, dynamic>>(unprotectedDisks!, (value) => value.toMap()),
      'vmEncryptionType': vmEncryptionType,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
      'vmSyncedConfigDetails': ?vmSyncedConfigDetails == null ? null : vmSyncedConfigDetails!.toMap(),
    };
  }

  factory A2AReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AReplicationDetailsResponse(
      agentCertificateExpiryDate: map['agentCertificateExpiryDate'] as String,
      agentExpiryDate: map['agentExpiryDate'] == null ? null : map['agentExpiryDate'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      autoProtectionOfDataDisk: map['autoProtectionOfDataDisk'] == null ? null : map['autoProtectionOfDataDisk'] as String,
      churnOptionSelected: map['churnOptionSelected'] as String,
      fabricObjectId: map['fabricObjectId'] == null ? null : map['fabricObjectId'] as String,
      initialPrimaryExtendedLocation: map['initialPrimaryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['initialPrimaryExtendedLocation'] as Map).cast<String, dynamic>()),
      initialPrimaryFabricLocation: map['initialPrimaryFabricLocation'] as String,
      initialPrimaryZone: map['initialPrimaryZone'] as String,
      initialRecoveryExtendedLocation: map['initialRecoveryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['initialRecoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      initialRecoveryFabricLocation: map['initialRecoveryFabricLocation'] as String,
      initialRecoveryZone: map['initialRecoveryZone'] as String,
      instanceType: map['instanceType'] as String,
      isClusterInfraReady: map['isClusterInfraReady'] == null ? null : map['isClusterInfraReady'] as bool,
      isReplicationAgentCertificateUpdateRequired: map['isReplicationAgentCertificateUpdateRequired'] == null ? null : map['isReplicationAgentCertificateUpdateRequired'] as bool,
      isReplicationAgentUpdateRequired: map['isReplicationAgentUpdateRequired'] == null ? null : map['isReplicationAgentUpdateRequired'] as bool,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      lifecycleId: map['lifecycleId'] == null ? null : map['lifecycleId'] as String,
      managementId: map['managementId'] == null ? null : map['managementId'] as String,
      monitoringJobType: map['monitoringJobType'] == null ? null : map['monitoringJobType'] as String,
      monitoringPercentageCompletion: map['monitoringPercentageCompletion'] == null ? null : map['monitoringPercentageCompletion'] as int,
      multiVmGroupCreateOption: map['multiVmGroupCreateOption'] == null ? null : map['multiVmGroupCreateOption'] as String,
      multiVmGroupId: map['multiVmGroupId'] == null ? null : map['multiVmGroupId'] as String,
      multiVmGroupName: map['multiVmGroupName'] == null ? null : map['multiVmGroupName'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      primaryAvailabilityZone: map['primaryAvailabilityZone'] == null ? null : map['primaryAvailabilityZone'] as String,
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>()),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : map['primaryFabricLocation'] as String,
      protectedDisks: map['protectedDisks'] == null ? null : pulumi.Input.decodeList<A2AProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => A2AProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectedManagedDisks: map['protectedManagedDisks'] == null ? null : pulumi.Input.decodeList<A2AProtectedManagedDiskDetailsResponse>(map['protectedManagedDisks'], (value) => A2AProtectedManagedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectionClusterId: map['protectionClusterId'] == null ? null : map['protectionClusterId'] as String,
      recoveryAvailabilitySet: map['recoveryAvailabilitySet'] == null ? null : map['recoveryAvailabilitySet'] as String,
      recoveryAvailabilityZone: map['recoveryAvailabilityZone'] == null ? null : map['recoveryAvailabilityZone'] as String,
      recoveryAzureGeneration: map['recoveryAzureGeneration'] as String,
      recoveryAzureResourceGroupId: map['recoveryAzureResourceGroupId'] == null ? null : map['recoveryAzureResourceGroupId'] as String,
      recoveryAzureVMName: map['recoveryAzureVMName'] == null ? null : map['recoveryAzureVMName'] as String,
      recoveryAzureVMSize: map['recoveryAzureVMSize'] == null ? null : map['recoveryAzureVMSize'] as String,
      recoveryBootDiagStorageAccountId: map['recoveryBootDiagStorageAccountId'] == null ? null : map['recoveryBootDiagStorageAccountId'] as String,
      recoveryCapacityReservationGroupId: map['recoveryCapacityReservationGroupId'] == null ? null : map['recoveryCapacityReservationGroupId'] as String,
      recoveryCloudService: map['recoveryCloudService'] == null ? null : map['recoveryCloudService'] as String,
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : map['recoveryFabricLocation'] as String,
      recoveryFabricObjectId: map['recoveryFabricObjectId'] == null ? null : map['recoveryFabricObjectId'] as String,
      recoveryProximityPlacementGroupId: map['recoveryProximityPlacementGroupId'] == null ? null : map['recoveryProximityPlacementGroupId'] as String,
      recoveryVirtualMachineScaleSetId: map['recoveryVirtualMachineScaleSetId'] == null ? null : map['recoveryVirtualMachineScaleSetId'] as String,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      selectedRecoveryAzureNetworkId: map['selectedRecoveryAzureNetworkId'] == null ? null : map['selectedRecoveryAzureNetworkId'] as String,
      selectedTfoAzureNetworkId: map['selectedTfoAzureNetworkId'] == null ? null : map['selectedTfoAzureNetworkId'] as String,
      testFailoverRecoveryFabricObjectId: map['testFailoverRecoveryFabricObjectId'] == null ? null : map['testFailoverRecoveryFabricObjectId'] as String,
      tfoAzureVMName: map['tfoAzureVMName'] == null ? null : map['tfoAzureVMName'] as String,
      unprotectedDisks: map['unprotectedDisks'] == null ? null : pulumi.Input.decodeList<A2AUnprotectedDiskDetailsResponse>(map['unprotectedDisks'], (value) => A2AUnprotectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmEncryptionType: map['vmEncryptionType'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics'], (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmProtectionState: map['vmProtectionState'] == null ? null : map['vmProtectionState'] as String,
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : map['vmProtectionStateDescription'] as String,
      vmSyncedConfigDetails: map['vmSyncedConfigDetails'] == null ? null : AzureToAzureVmSyncedConfigDetailsResponse.fromMap((map['vmSyncedConfigDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

