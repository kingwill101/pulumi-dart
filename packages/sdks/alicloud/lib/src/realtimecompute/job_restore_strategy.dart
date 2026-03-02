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
  JobRestoreStrategy({
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
      allowNonRestoredState: map['allowNonRestoredState'] == null ? null : (map['allowNonRestoredState']! as bool).input(),
      jobStartTimeInMs: map['jobStartTimeInMs'] == null ? null : (map['jobStartTimeInMs']! as int).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      savepointId: map['savepointId'] == null ? null : (map['savepointId']! as String).input(),
    );
  }
}

