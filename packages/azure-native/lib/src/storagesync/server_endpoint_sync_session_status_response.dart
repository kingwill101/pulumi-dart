// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_endpoint_files_not_syncing_error_response.dart';

/// Sync Session status object.
class ServerEndpointSyncSessionStatusResponse {
  /// Array of per-item errors coming from the last sync session.
  final List<ServerEndpointFilesNotSyncingErrorResponse> filesNotSyncingErrors;
  /// Sync mode
  final String lastSyncMode;
  /// Last sync per item error count.
  final double lastSyncPerItemErrorCount;
  /// Last sync result (HResult)
  final int lastSyncResult;
  /// Last sync success timestamp
  final String lastSyncSuccessTimestamp;
  /// Last sync timestamp
  final String lastSyncTimestamp;
  /// Count of persistent files not syncing.
  final double persistentFilesNotSyncingCount;
  /// Count of transient files not syncing.
  final double transientFilesNotSyncingCount;

  /// Creates a new [ServerEndpointSyncSessionStatusResponse].
  /// [filesNotSyncingErrors] Array of per-item errors coming from the last sync session.
  /// [lastSyncMode] Sync mode
  /// [lastSyncPerItemErrorCount] Last sync per item error count.
  /// [lastSyncResult] Last sync result (HResult)
  /// [lastSyncSuccessTimestamp] Last sync success timestamp
  /// [lastSyncTimestamp] Last sync timestamp
  /// [persistentFilesNotSyncingCount] Count of persistent files not syncing.
  /// [transientFilesNotSyncingCount] Count of transient files not syncing.
  ServerEndpointSyncSessionStatusResponse({
    required this.filesNotSyncingErrors,
    required this.lastSyncMode,
    required this.lastSyncPerItemErrorCount,
    required this.lastSyncResult,
    required this.lastSyncSuccessTimestamp,
    required this.lastSyncTimestamp,
    required this.persistentFilesNotSyncingCount,
    required this.transientFilesNotSyncingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesNotSyncingErrors': pulumi.Input.encodeList<ServerEndpointFilesNotSyncingErrorResponse, Map<String, dynamic>>(filesNotSyncingErrors, (value) => value.toMap()),
      'lastSyncMode': lastSyncMode,
      'lastSyncPerItemErrorCount': lastSyncPerItemErrorCount,
      'lastSyncResult': lastSyncResult,
      'lastSyncSuccessTimestamp': lastSyncSuccessTimestamp,
      'lastSyncTimestamp': lastSyncTimestamp,
      'persistentFilesNotSyncingCount': persistentFilesNotSyncingCount,
      'transientFilesNotSyncingCount': transientFilesNotSyncingCount,
    };
  }

  factory ServerEndpointSyncSessionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointSyncSessionStatusResponse(
      filesNotSyncingErrors: pulumi.Input.decodeList<ServerEndpointFilesNotSyncingErrorResponse>(map['filesNotSyncingErrors'], (value) => ServerEndpointFilesNotSyncingErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastSyncMode: map['lastSyncMode'] as String,
      lastSyncPerItemErrorCount: map['lastSyncPerItemErrorCount'] as double,
      lastSyncResult: map['lastSyncResult'] as int,
      lastSyncSuccessTimestamp: map['lastSyncSuccessTimestamp'] as String,
      lastSyncTimestamp: map['lastSyncTimestamp'] as String,
      persistentFilesNotSyncingCount: map['persistentFilesNotSyncingCount'] as double,
      transientFilesNotSyncingCount: map['transientFilesNotSyncingCount'] as double,
    );
  }
}

