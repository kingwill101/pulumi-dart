// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// The sync status of the plan member.
class PlanMemberSyncStatusResponse {
  /// Error response describing why the sync failed.
  final ErrorDetailResponse? lastSyncError;
  /// When the plan member was last synced.
  final String lastSyncTime;
  /// The synchronization state of the plan member.
  final String syncState;

  /// Creates a new [PlanMemberSyncStatusResponse].
  /// [lastSyncError] Error response describing why the sync failed.
  /// [lastSyncTime] When the plan member was last synced.
  /// [syncState] The synchronization state of the plan member.
  PlanMemberSyncStatusResponse({
    this.lastSyncError,
    required this.lastSyncTime,
    required this.syncState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSyncError': ?lastSyncError == null ? null : lastSyncError!.toMap(),
      'lastSyncTime': lastSyncTime,
      'syncState': syncState,
    };
  }

  factory PlanMemberSyncStatusResponse.fromMap(Map<String, dynamic> map) {
    return PlanMemberSyncStatusResponse(
      lastSyncError: map['lastSyncError'] == null ? null : ErrorDetailResponse.fromMap((map['lastSyncError'] as Map).cast<String, dynamic>()),
      lastSyncTime: map['lastSyncTime'] as String,
      syncState: map['syncState'] as String,
    );
  }
}

