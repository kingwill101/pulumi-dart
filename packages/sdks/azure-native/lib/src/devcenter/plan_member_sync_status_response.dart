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
  const PlanMemberSyncStatusResponse({
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
      lastSyncError: (() { final guardedValue = map['lastSyncError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastSyncTime: pulumi.Input.fromValue(map['lastSyncTime'] as String),
      syncState: pulumi.Input.fromValue(map['syncState'] as String),
    );
  }
}
