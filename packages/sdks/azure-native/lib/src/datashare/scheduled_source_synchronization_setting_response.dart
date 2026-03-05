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
      kind: pulumi.Input.fromValue(map['kind'] as String),
      recurrenceInterval: (() { final guardedValue = map['recurrenceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synchronizationTime: (() { final guardedValue = map['synchronizationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

