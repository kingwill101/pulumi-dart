// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';
import 'in_mage_agent_details_response.dart';
import 'in_mage_protected_disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'osdisk_details_response.dart';
import 'vmnic_details_response.dart';

/// InMage provider specific settings.
class InMageReplicationDetailsResponse {
  /// The active location of the VM. If the VM is being protected from Azure, this field will take values from { Azure, OnPrem }. If the VM is being protected between two data-centers, this field will be OnPrem always.
  final String? activeSiteType;
  /// The agent details.
  final InMageAgentDetailsResponse? agentDetails;
  /// A value indicating the underlying Azure storage account. If the VM is not running in Azure, this value shall be set to null.
  final String? azureStorageAccountId;
  /// The compressed data change rate in MB.
  final double? compressedDataRateInMB;
  /// The collection of Consistency points.
  final Map<String, String>? consistencyPoints;
  /// The datastores of the on-premise machine Value can be list of strings that contain datastore names.
  final List<String>? datastores;
  /// A value indicating the discovery type of the machine.
  final String? discoveryType;
  /// A value indicating whether any disk is resized for this VM.
  final String? diskResized;
  /// The infrastructure VM Id.
  final String? infrastructureVmId;
  /// Gets the Instance type.
  /// Expected value is 'InMage'.
  final String instanceType;
  /// The source IP address.
  final String? ipAddress;
  /// A value indicating whether additional IR stats are available or not.
  final bool? isAdditionalStatsAvailable;
  /// The last heartbeat received from the source server.
  final String? lastHeartbeat;
  /// The last RPO calculated time.
  final String? lastRpoCalculatedTime;
  /// The last update time received from on-prem components.
  final String? lastUpdateReceivedTime;
  /// The master target Id.
  final String? masterTargetId;
  /// The multi vm group Id, if any.
  final String? multiVmGroupId;
  /// The multi vm group name, if any.
  final String? multiVmGroupName;
  /// A value indicating whether the multi vm sync is enabled or disabled.
  final String? multiVmSyncStatus;
  /// The OS details.
  final OSDiskDetailsResponse? osDetails;
  /// The OS Version of the protected item.
  final String? osVersion;
  /// The process server Id.
  final String? processServerId;
  /// The list of protected disks.
  final List<InMageProtectedDiskDetailsResponse>? protectedDisks;
  /// The protection stage.
  final String? protectionStage;
  /// A value indicating whether the source server requires a restart after update.
  final String? rebootAfterUpdateStatus;
  /// The replica id of the protected item.
  final String? replicaId;
  /// The resync details of the machine.
  final InitialReplicationDetailsResponse? resyncDetails;
  /// The retention window end time.
  final String? retentionWindowEnd;
  /// The retention window start time.
  final String? retentionWindowStart;
  /// The RPO in seconds.
  final double? rpoInSeconds;
  /// The CPU count of the VM on the primary side.
  final int? sourceVmCpuCount;
  /// The RAM size of the VM on the primary side.
  final int? sourceVmRamSizeInMB;
  /// The total transferred data in bytes.
  final double? totalDataTransferred;
  /// The progress health.
  final String? totalProgressHealth;
  /// The uncompressed data change rate in MB.
  final double? uncompressedDataRateInMB;
  /// The vCenter infrastructure Id.
  final String? vCenterInfrastructureId;
  /// The validation errors of the on-premise machine Value can be list of validation errors.
  final List<HealthErrorResponse>? validationErrors;
  /// The virtual machine Id.
  final String? vmId;
  /// The PE Network details.
  final List<VMNicDetailsResponse>? vmNics;
  /// The protection state for the vm.
  final String? vmProtectionState;
  /// The protection state description for the vm.
  final String? vmProtectionStateDescription;

  /// Creates a new [InMageReplicationDetailsResponse].
  /// [activeSiteType] The active location of the VM. If the VM is being protected from Azure, this field will take values from { Azure, OnPrem }. If the VM is being protected between two data-centers, this field will be OnPrem always.
  /// [agentDetails] The agent details.
  /// [azureStorageAccountId] A value indicating the underlying Azure storage account. If the VM is not running in Azure, this value shall be set to null.
  /// [compressedDataRateInMB] The compressed data change rate in MB.
  /// [consistencyPoints] The collection of Consistency points.
  /// [datastores] The datastores of the on-premise machine Value can be list of strings that contain datastore names.
  /// [discoveryType] A value indicating the discovery type of the machine.
  /// [diskResized] A value indicating whether any disk is resized for this VM.
  /// [infrastructureVmId] The infrastructure VM Id.
  /// [instanceType] Gets the Instance type.
  /// [ipAddress] The source IP address.
  /// [isAdditionalStatsAvailable] A value indicating whether additional IR stats are available or not.
  /// [lastHeartbeat] The last heartbeat received from the source server.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [lastUpdateReceivedTime] The last update time received from on-prem components.
  /// [masterTargetId] The master target Id.
  /// [multiVmGroupId] The multi vm group Id, if any.
  /// [multiVmGroupName] The multi vm group name, if any.
  /// [multiVmSyncStatus] A value indicating whether the multi vm sync is enabled or disabled.
  /// [osDetails] The OS details.
  /// [osVersion] The OS Version of the protected item.
  /// [processServerId] The process server Id.
  /// [protectedDisks] The list of protected disks.
  /// [protectionStage] The protection stage.
  /// [rebootAfterUpdateStatus] A value indicating whether the source server requires a restart after update.
  /// [replicaId] The replica id of the protected item.
  /// [resyncDetails] The resync details of the machine.
  /// [retentionWindowEnd] The retention window end time.
  /// [retentionWindowStart] The retention window start time.
  /// [rpoInSeconds] The RPO in seconds.
  /// [sourceVmCpuCount] The CPU count of the VM on the primary side.
  /// [sourceVmRamSizeInMB] The RAM size of the VM on the primary side.
  /// [totalDataTransferred] The total transferred data in bytes.
  /// [totalProgressHealth] The progress health.
  /// [uncompressedDataRateInMB] The uncompressed data change rate in MB.
  /// [vCenterInfrastructureId] The vCenter infrastructure Id.
  /// [validationErrors] The validation errors of the on-premise machine Value can be list of validation errors.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  InMageReplicationDetailsResponse({
    this.activeSiteType,
    this.agentDetails,
    this.azureStorageAccountId,
    this.compressedDataRateInMB,
    this.consistencyPoints,
    this.datastores,
    this.discoveryType,
    this.diskResized,
    this.infrastructureVmId,
    required this.instanceType,
    this.ipAddress,
    this.isAdditionalStatsAvailable,
    this.lastHeartbeat,
    this.lastRpoCalculatedTime,
    this.lastUpdateReceivedTime,
    this.masterTargetId,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.multiVmSyncStatus,
    this.osDetails,
    this.osVersion,
    this.processServerId,
    this.protectedDisks,
    this.protectionStage,
    this.rebootAfterUpdateStatus,
    this.replicaId,
    this.resyncDetails,
    this.retentionWindowEnd,
    this.retentionWindowStart,
    this.rpoInSeconds,
    this.sourceVmCpuCount,
    this.sourceVmRamSizeInMB,
    this.totalDataTransferred,
    this.totalProgressHealth,
    this.uncompressedDataRateInMB,
    this.vCenterInfrastructureId,
    this.validationErrors,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSiteType': ?activeSiteType,
      'agentDetails': ?agentDetails == null ? null : agentDetails!.toMap(),
      'azureStorageAccountId': ?azureStorageAccountId,
      'compressedDataRateInMB': ?compressedDataRateInMB,
      'consistencyPoints': ?consistencyPoints,
      'datastores': ?datastores,
      'discoveryType': ?discoveryType,
      'diskResized': ?diskResized,
      'infrastructureVmId': ?infrastructureVmId,
      'instanceType': instanceType,
      'ipAddress': ?ipAddress,
      'isAdditionalStatsAvailable': ?isAdditionalStatsAvailable,
      'lastHeartbeat': ?lastHeartbeat,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'lastUpdateReceivedTime': ?lastUpdateReceivedTime,
      'masterTargetId': ?masterTargetId,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'osDetails': ?osDetails == null ? null : osDetails!.toMap(),
      'osVersion': ?osVersion,
      'processServerId': ?processServerId,
      'protectedDisks': ?protectedDisks == null ? null : pulumi.Input.encodeList<InMageProtectedDiskDetailsResponse, Map<String, dynamic>>(protectedDisks!, (value) => value.toMap()),
      'protectionStage': ?protectionStage,
      'rebootAfterUpdateStatus': ?rebootAfterUpdateStatus,
      'replicaId': ?replicaId,
      'resyncDetails': ?resyncDetails == null ? null : resyncDetails!.toMap(),
      'retentionWindowEnd': ?retentionWindowEnd,
      'retentionWindowStart': ?retentionWindowStart,
      'rpoInSeconds': ?rpoInSeconds,
      'sourceVmCpuCount': ?sourceVmCpuCount,
      'sourceVmRamSizeInMB': ?sourceVmRamSizeInMB,
      'totalDataTransferred': ?totalDataTransferred,
      'totalProgressHealth': ?totalProgressHealth,
      'uncompressedDataRateInMB': ?uncompressedDataRateInMB,
      'vCenterInfrastructureId': ?vCenterInfrastructureId,
      'validationErrors': ?validationErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(validationErrors!, (value) => value.toMap()),
      'vmId': ?vmId,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory InMageReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageReplicationDetailsResponse(
      activeSiteType: map['activeSiteType'] == null ? null : map['activeSiteType'] as String,
      agentDetails: map['agentDetails'] == null ? null : InMageAgentDetailsResponse.fromMap((map['agentDetails'] as Map).cast<String, dynamic>()),
      azureStorageAccountId: map['azureStorageAccountId'] == null ? null : map['azureStorageAccountId'] as String,
      compressedDataRateInMB: map['compressedDataRateInMB'] == null ? null : map['compressedDataRateInMB'] as double,
      consistencyPoints: map['consistencyPoints'] == null ? null : (map['consistencyPoints'] as Map).cast<String, String>(),
      datastores: map['datastores'] == null ? null : (map['datastores'] as List).cast<String>(),
      discoveryType: map['discoveryType'] == null ? null : map['discoveryType'] as String,
      diskResized: map['diskResized'] == null ? null : map['diskResized'] as String,
      infrastructureVmId: map['infrastructureVmId'] == null ? null : map['infrastructureVmId'] as String,
      instanceType: map['instanceType'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      isAdditionalStatsAvailable: map['isAdditionalStatsAvailable'] == null ? null : map['isAdditionalStatsAvailable'] as bool,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      lastUpdateReceivedTime: map['lastUpdateReceivedTime'] == null ? null : map['lastUpdateReceivedTime'] as String,
      masterTargetId: map['masterTargetId'] == null ? null : map['masterTargetId'] as String,
      multiVmGroupId: map['multiVmGroupId'] == null ? null : map['multiVmGroupId'] as String,
      multiVmGroupName: map['multiVmGroupName'] == null ? null : map['multiVmGroupName'] as String,
      multiVmSyncStatus: map['multiVmSyncStatus'] == null ? null : map['multiVmSyncStatus'] as String,
      osDetails: map['osDetails'] == null ? null : OSDiskDetailsResponse.fromMap((map['osDetails'] as Map).cast<String, dynamic>()),
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
      processServerId: map['processServerId'] == null ? null : map['processServerId'] as String,
      protectedDisks: map['protectedDisks'] == null ? null : pulumi.Input.decodeList<InMageProtectedDiskDetailsResponse>(map['protectedDisks'], (value) => InMageProtectedDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectionStage: map['protectionStage'] == null ? null : map['protectionStage'] as String,
      rebootAfterUpdateStatus: map['rebootAfterUpdateStatus'] == null ? null : map['rebootAfterUpdateStatus'] as String,
      replicaId: map['replicaId'] == null ? null : map['replicaId'] as String,
      resyncDetails: map['resyncDetails'] == null ? null : InitialReplicationDetailsResponse.fromMap((map['resyncDetails'] as Map).cast<String, dynamic>()),
      retentionWindowEnd: map['retentionWindowEnd'] == null ? null : map['retentionWindowEnd'] as String,
      retentionWindowStart: map['retentionWindowStart'] == null ? null : map['retentionWindowStart'] as String,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      sourceVmCpuCount: map['sourceVmCpuCount'] == null ? null : map['sourceVmCpuCount'] as int,
      sourceVmRamSizeInMB: map['sourceVmRamSizeInMB'] == null ? null : map['sourceVmRamSizeInMB'] as int,
      totalDataTransferred: map['totalDataTransferred'] == null ? null : map['totalDataTransferred'] as double,
      totalProgressHealth: map['totalProgressHealth'] == null ? null : map['totalProgressHealth'] as String,
      uncompressedDataRateInMB: map['uncompressedDataRateInMB'] == null ? null : map['uncompressedDataRateInMB'] as double,
      vCenterInfrastructureId: map['vCenterInfrastructureId'] == null ? null : map['vCenterInfrastructureId'] as String,
      validationErrors: map['validationErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['validationErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics'], (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmProtectionState: map['vmProtectionState'] == null ? null : map['vmProtectionState'] as String,
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : map['vmProtectionStateDescription'] as String,
    );
  }
}

