// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A type of synchronization setting based on schedule
class ScheduledSourceSynchronizationSettingResponse {
  /// Kind of synchronization setting on share.
  /// Expected value is 'ScheduleBased'.
  final pulumi.Input<String> kind;
  /// Recurrence Interval
  final pulumi.Input<String>? recurrenceInterval;
  /// Synchronization time
  final pulumi.Input<String>? synchronizationTime;

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
      kind: (map['kind'] as String).input(),
      recurrenceInterval: map['recurrenceInterval'] == null ? null : (map['recurrenceInterval'] as String).input(),
      synchronizationTime: map['synchronizationTime'] == null ? null : (map['synchronizationTime'] as String).input(),
    );
  }
}

