// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A ShareSubscriptionSynchronization data transfer object.
class ShareSubscriptionSynchronizationResponse {
  /// Synchronization duration
  final pulumi.Input<int> durationMs;
  /// End time of synchronization
  final pulumi.Input<String> endTime;
  /// message of Synchronization
  final pulumi.Input<String> message;
  /// start time of synchronization
  final pulumi.Input<String> startTime;
  /// Raw Status
  final pulumi.Input<String> status;
  /// Synchronization id
  final pulumi.Input<String> synchronizationId;
  /// Synchronization Mode
  final pulumi.Input<String> synchronizationMode;

  /// Creates a new [ShareSubscriptionSynchronizationResponse].
  /// [durationMs] Synchronization duration
  /// [endTime] End time of synchronization
  /// [message] message of Synchronization
  /// [startTime] start time of synchronization
  /// [status] Raw Status
  /// [synchronizationId] Synchronization id
  /// [synchronizationMode] Synchronization Mode
  ShareSubscriptionSynchronizationResponse({
    required this.durationMs,
    required this.endTime,
    required this.message,
    required this.startTime,
    required this.status,
    required this.synchronizationId,
    required this.synchronizationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationMs': durationMs,
      'endTime': endTime,
      'message': message,
      'startTime': startTime,
      'status': status,
      'synchronizationId': synchronizationId,
      'synchronizationMode': synchronizationMode,
    };
  }

  factory ShareSubscriptionSynchronizationResponse.fromMap(Map<String, dynamic> map) {
    return ShareSubscriptionSynchronizationResponse(
      durationMs: (map['durationMs'] as int).input(),
      endTime: (map['endTime'] as String).input(),
      message: (map['message'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      synchronizationId: (map['synchronizationId'] as String).input(),
      synchronizationMode: (map['synchronizationMode'] as String).input(),
    );
  }
}

