// ignore_for_file: unused_element, unnecessary_cast


/// A ShareSubscriptionSynchronization data transfer object.
class ShareSubscriptionSynchronizationResponse {
  /// Synchronization duration
  final int durationMs;
  /// End time of synchronization
  final String endTime;
  /// message of Synchronization
  final String message;
  /// start time of synchronization
  final String startTime;
  /// Raw Status
  final String status;
  /// Synchronization id
  final String synchronizationId;
  /// Synchronization Mode
  final String synchronizationMode;

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
      durationMs: map['durationMs'] as int,
      endTime: map['endTime'] as String,
      message: map['message'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      synchronizationId: map['synchronizationId'] as String,
      synchronizationMode: map['synchronizationMode'] as String,
    );
  }
}

