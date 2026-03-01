// ignore_for_file: unused_element, unnecessary_cast


/// A type of synchronization setting based on schedule
class ScheduledSourceSynchronizationSettingResponse {
  /// Kind of synchronization setting on share.
  /// Expected value is 'ScheduleBased'.
  final String kind;
  /// Recurrence Interval
  final String? recurrenceInterval;
  /// Synchronization time
  final String? synchronizationTime;

  /// Creates a new [ScheduledSourceSynchronizationSettingResponse].
  /// [kind] Kind of synchronization setting on share.
  /// [recurrenceInterval] Recurrence Interval
  /// [synchronizationTime] Synchronization time
  ScheduledSourceSynchronizationSettingResponse({
    required this.kind,
    this.recurrenceInterval,
    this.synchronizationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'recurrenceInterval': ?recurrenceInterval,
      'synchronizationTime': ?synchronizationTime,
    };
  }

  factory ScheduledSourceSynchronizationSettingResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledSourceSynchronizationSettingResponse(
      kind: map['kind'] as String,
      recurrenceInterval: map['recurrenceInterval'] == null ? null : map['recurrenceInterval'] as String,
      synchronizationTime: map['synchronizationTime'] == null ? null : map['synchronizationTime'] as String,
    );
  }
}

