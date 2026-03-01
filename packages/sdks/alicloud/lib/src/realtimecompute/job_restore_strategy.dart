// ignore_for_file: unused_element, unnecessary_cast


class JobRestoreStrategy {
  /// Stateless startup
  final bool? allowNonRestoredState;
  /// Stateless start time. When stateless start is selected, you can set this parameter to enable all source tables that support startTime to read data from this time.
  final int? jobStartTimeInMs;
  /// Restore type
  final String? kind;
  /// SavepointId
  final String? savepointId;

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
      allowNonRestoredState: map['allowNonRestoredState'] == null ? null : map['allowNonRestoredState'] as bool,
      jobStartTimeInMs: map['jobStartTimeInMs'] == null ? null : map['jobStartTimeInMs'] as int,
      kind: map['kind'] == null ? null : map['kind'] as String,
      savepointId: map['savepointId'] == null ? null : map['savepointId'] as String,
    );
  }
}

