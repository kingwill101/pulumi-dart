// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// The sync status of the plan member.
class PlanMemberSyncStatusResponse {
  /// Error response describing why the sync failed.
  final pulumi.Input<ErrorDetailResponse>? lastSyncError;
  /// When the plan member was last synced.
  final pulumi.Input<String> lastSyncTime;
  /// The synchronization state of the plan member.
  final pulumi.Input<String> syncState;

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
      'lastSyncError': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(lastSyncError, (value) => value.toMap()),
      'lastSyncTime': lastSyncTime,
      'syncState': syncState,
    };
  }

  factory PlanMemberSyncStatusResponse.fromMap(Map<String, dynamic> map) {
    return PlanMemberSyncStatusResponse(
      lastSyncError: map['lastSyncError'] == null ? null : (ErrorDetailResponse.fromMap((map['lastSyncError'] as Map).cast<String, dynamic>())).input(),
      lastSyncTime: (map['lastSyncTime'] as String).input(),
      syncState: (map['syncState'] as String).input(),
    );
  }
}

