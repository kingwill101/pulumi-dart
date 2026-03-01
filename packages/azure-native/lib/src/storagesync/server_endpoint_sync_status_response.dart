// ignore_for_file: unused_element, unnecessary_cast

import 'server_endpoint_background_data_download_activity_response.dart';
import 'server_endpoint_sync_activity_status_response.dart';
import 'server_endpoint_sync_session_status_response.dart';

/// Server Endpoint sync status
class ServerEndpointSyncStatusResponse {
  /// Background data download activity
  final ServerEndpointBackgroundDataDownloadActivityResponse backgroundDataDownloadActivity;
  /// Combined Health Status.
  final String combinedHealth;
  /// Download sync activity
  final ServerEndpointSyncActivityStatusResponse downloadActivity;
  /// Download Health Status.
  final String downloadHealth;
  /// Download Status
  final ServerEndpointSyncSessionStatusResponse downloadStatus;
  /// Last Updated Timestamp
  final String lastUpdatedTimestamp;
  /// Offline Data Transfer State
  final String offlineDataTransferStatus;
  /// Sync activity
  final String syncActivity;
  /// Total count of persistent files not syncing (combined upload + download).
  final double totalPersistentFilesNotSyncingCount;
  /// Upload sync activity
  final ServerEndpointSyncActivityStatusResponse uploadActivity;
  /// Upload Health Status.
  final String uploadHealth;
  /// Upload Status
  final ServerEndpointSyncSessionStatusResponse uploadStatus;

  /// Creates a new [ServerEndpointSyncStatusResponse].
  /// [backgroundDataDownloadActivity] Background data download activity
  /// [combinedHealth] Combined Health Status.
  /// [downloadActivity] Download sync activity
  /// [downloadHealth] Download Health Status.
  /// [downloadStatus] Download Status
  /// [lastUpdatedTimestamp] Last Updated Timestamp
  /// [offlineDataTransferStatus] Offline Data Transfer State
  /// [syncActivity] Sync activity
  /// [totalPersistentFilesNotSyncingCount] Total count of persistent files not syncing (combined upload + download).
  /// [uploadActivity] Upload sync activity
  /// [uploadHealth] Upload Health Status.
  /// [uploadStatus] Upload Status
  ServerEndpointSyncStatusResponse({
    required this.backgroundDataDownloadActivity,
    required this.combinedHealth,
    required this.downloadActivity,
    required this.downloadHealth,
    required this.downloadStatus,
    required this.lastUpdatedTimestamp,
    required this.offlineDataTransferStatus,
    required this.syncActivity,
    required this.totalPersistentFilesNotSyncingCount,
    required this.uploadActivity,
    required this.uploadHealth,
    required this.uploadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundDataDownloadActivity': backgroundDataDownloadActivity.toMap(),
      'combinedHealth': combinedHealth,
      'downloadActivity': downloadActivity.toMap(),
      'downloadHealth': downloadHealth,
      'downloadStatus': downloadStatus.toMap(),
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'offlineDataTransferStatus': offlineDataTransferStatus,
      'syncActivity': syncActivity,
      'totalPersistentFilesNotSyncingCount': totalPersistentFilesNotSyncingCount,
      'uploadActivity': uploadActivity.toMap(),
      'uploadHealth': uploadHealth,
      'uploadStatus': uploadStatus.toMap(),
    };
  }

  factory ServerEndpointSyncStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointSyncStatusResponse(
      backgroundDataDownloadActivity: ServerEndpointBackgroundDataDownloadActivityResponse.fromMap((map['backgroundDataDownloadActivity'] as Map).cast<String, dynamic>()),
      combinedHealth: map['combinedHealth'] as String,
      downloadActivity: ServerEndpointSyncActivityStatusResponse.fromMap((map['downloadActivity'] as Map).cast<String, dynamic>()),
      downloadHealth: map['downloadHealth'] as String,
      downloadStatus: ServerEndpointSyncSessionStatusResponse.fromMap((map['downloadStatus'] as Map).cast<String, dynamic>()),
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      offlineDataTransferStatus: map['offlineDataTransferStatus'] as String,
      syncActivity: map['syncActivity'] as String,
      totalPersistentFilesNotSyncingCount: map['totalPersistentFilesNotSyncingCount'] as double,
      uploadActivity: ServerEndpointSyncActivityStatusResponse.fromMap((map['uploadActivity'] as Map).cast<String, dynamic>()),
      uploadHealth: map['uploadHealth'] as String,
      uploadStatus: ServerEndpointSyncSessionStatusResponse.fromMap((map['uploadStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

