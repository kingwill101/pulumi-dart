// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobRestoreStrategy {
  /// Stateless startup
  final pulumi.Input<bool>? allowNonRestoredState;
  /// Stateless start time. When stateless start is selected, you can set this parameter to enable all source tables that support startTime to read data from this time.
  final pulumi.Input<int>? jobStartTimeInMs;
  /// Restore type
  final pulumi.Input<String>? kind;
  /// SavepointId
  final pulumi.Input<String>? savepointId;

  /// Creates a new [JobRestoreStrategy].
  /// [allowNonRestoredState] Stateless startup
  /// [jobStartTimeInMs] Stateless start time. When stateless start is selected, you can set this parameter to enable all source tables that support startTime to read data from this time.
  /// [kind] Restore type
  /// [savepointId] SavepointId
  const JobRestoreStrategy({
    this.allowNonRestoredState,
    this.jobStartTimeInMs,
    this.kind,
    this.savepointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonRestoredState': ?allowNonRestoredState,
      'jobStartTimeInMs': ?jobStartTimeInMs,
      'kind': ?kind,
      'savepointId': ?savepointId,
    };
  }

  factory JobRestoreStrategy.fromMap(Map<String, dynamic> map) {
    return JobRestoreStrategy(
      allowNonRestoredState: (() { final guardedValue = map['allowNonRestoredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobStartTimeInMs: (() { final guardedValue = map['jobStartTimeInMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      savepointId: (() { final guardedValue = map['savepointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

