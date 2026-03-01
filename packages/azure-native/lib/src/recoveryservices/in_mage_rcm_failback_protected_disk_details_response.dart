// ignore_for_file: unused_element, unnecessary_cast

import 'in_mage_rcm_failback_sync_details_response.dart';

/// InMageRcmFailback protected disk details.
class InMageRcmFailbackProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double capacityInBytes;
  /// The data pending at source agent in MB.
  final double dataPendingAtSourceAgentInMB;
  /// The data pending in log data store in MB.
  final double dataPendingInLogDataStoreInMB;
  /// The disk Id (reported by source agent).
  final String diskId;
  /// The disk name.
  final String diskName;
  /// The disk Uuid (reported by vCenter).
  final String diskUuid;
  /// The initial replication details.
  final InMageRcmFailbackSyncDetailsResponse? irDetails;
  /// A value indicating whether initial replication is complete or not.
  final String isInitialReplicationComplete;
  /// A value indicating whether the disk is the OS disk.
  final String isOSDisk;
  /// The last sync time.
  final String lastSyncTime;
  /// The resync details.
  final InMageRcmFailbackSyncDetailsResponse? resyncDetails;

  /// Creates a new [InMageRcmFailbackProtectedDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [dataPendingAtSourceAgentInMB] The data pending at source agent in MB.
  /// [dataPendingInLogDataStoreInMB] The data pending in log data store in MB.
  /// [diskId] The disk Id (reported by source agent).
  /// [diskName] The disk name.
  /// [diskUuid] The disk Uuid (reported by vCenter).
  /// [irDetails] The initial replication details.
  /// [isInitialReplicationComplete] A value indicating whether initial replication is complete or not.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [lastSyncTime] The last sync time.
  /// [resyncDetails] The resync details.
  InMageRcmFailbackProtectedDiskDetailsResponse({
    required this.capacityInBytes,
    required this.dataPendingAtSourceAgentInMB,
    required this.dataPendingInLogDataStoreInMB,
    required this.diskId,
    required this.diskName,
    required this.diskUuid,
    this.irDetails,
    required this.isInitialReplicationComplete,
    required this.isOSDisk,
    required this.lastSyncTime,
    this.resyncDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'dataPendingAtSourceAgentInMB': dataPendingAtSourceAgentInMB,
      'dataPendingInLogDataStoreInMB': dataPendingInLogDataStoreInMB,
      'diskId': diskId,
      'diskName': diskName,
      'diskUuid': diskUuid,
      'irDetails': ?irDetails == null ? null : irDetails!.toMap(),
      'isInitialReplicationComplete': isInitialReplicationComplete,
      'isOSDisk': isOSDisk,
      'lastSyncTime': lastSyncTime,
      'resyncDetails': ?resyncDetails == null ? null : resyncDetails!.toMap(),
    };
  }

  factory InMageRcmFailbackProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackProtectedDiskDetailsResponse(
      capacityInBytes: map['capacityInBytes'] as double,
      dataPendingAtSourceAgentInMB: map['dataPendingAtSourceAgentInMB'] as double,
      dataPendingInLogDataStoreInMB: map['dataPendingInLogDataStoreInMB'] as double,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      diskUuid: map['diskUuid'] as String,
      irDetails: map['irDetails'] == null ? null : InMageRcmFailbackSyncDetailsResponse.fromMap((map['irDetails'] as Map).cast<String, dynamic>()),
      isInitialReplicationComplete: map['isInitialReplicationComplete'] as String,
      isOSDisk: map['isOSDisk'] as String,
      lastSyncTime: map['lastSyncTime'] as String,
      resyncDetails: map['resyncDetails'] == null ? null : InMageRcmFailbackSyncDetailsResponse.fromMap((map['resyncDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

