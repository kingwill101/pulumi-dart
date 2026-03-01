// ignore_for_file: unused_element, unnecessary_cast


/// A ShareSynchronization data transfer object.
class ShareSynchronizationResponse {
  /// Email of the user who created the synchronization
  final String? consumerEmail;
  /// Name of the user who created the synchronization
  final String? consumerName;
  /// Tenant name of the consumer who created the synchronization
  final String? consumerTenantName;
  /// synchronization duration
  final int? durationMs;
  /// End time of synchronization
  final String? endTime;
  /// message of synchronization
  final String? message;
  /// start time of synchronization
  final String? startTime;
  /// Raw Status
  final String? status;
  /// Synchronization id
  final String? synchronizationId;
  /// Synchronization mode
  final String synchronizationMode;

  /// Creates a new [ShareSynchronizationResponse].
  /// [consumerEmail] Email of the user who created the synchronization
  /// [consumerName] Name of the user who created the synchronization
  /// [consumerTenantName] Tenant name of the consumer who created the synchronization
  /// [durationMs] synchronization duration
  /// [endTime] End time of synchronization
  /// [message] message of synchronization
  /// [startTime] start time of synchronization
  /// [status] Raw Status
  /// [synchronizationId] Synchronization id
  /// [synchronizationMode] Synchronization mode
  ShareSynchronizationResponse({
    this.consumerEmail,
    this.consumerName,
    this.consumerTenantName,
    this.durationMs,
    this.endTime,
    this.message,
    this.startTime,
    this.status,
    this.synchronizationId,
    required this.synchronizationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerEmail': ?consumerEmail,
      'consumerName': ?consumerName,
      'consumerTenantName': ?consumerTenantName,
      'durationMs': ?durationMs,
      'endTime': ?endTime,
      'message': ?message,
      'startTime': ?startTime,
      'status': ?status,
      'synchronizationId': ?synchronizationId,
      'synchronizationMode': synchronizationMode,
    };
  }

  factory ShareSynchronizationResponse.fromMap(Map<String, dynamic> map) {
    return ShareSynchronizationResponse(
      consumerEmail: map['consumerEmail'] == null ? null : map['consumerEmail'] as String,
      consumerName: map['consumerName'] == null ? null : map['consumerName'] as String,
      consumerTenantName: map['consumerTenantName'] == null ? null : map['consumerTenantName'] as String,
      durationMs: map['durationMs'] == null ? null : map['durationMs'] as int,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      synchronizationId: map['synchronizationId'] == null ? null : map['synchronizationId'] as String,
      synchronizationMode: map['synchronizationMode'] as String,
    );
  }
}

