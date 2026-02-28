// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionTimeout {
  /// Time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is `60` seconds.
  final int? attemptDurationSeconds;

  /// Creates a new [JobDefinitionTimeout].
  /// [attemptDurationSeconds] Time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is `60` seconds.
  JobDefinitionTimeout({
    this.attemptDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attemptDurationSecondsValue = attemptDurationSeconds;
    if (attemptDurationSecondsValue != null) {
      map['attemptDurationSeconds'] = attemptDurationSecondsValue;
    }
    return map;
  }

  factory JobDefinitionTimeout.fromMap(Map<String, dynamic> map) {
    return JobDefinitionTimeout(
      attemptDurationSeconds: map['attemptDurationSeconds'] == null
          ? null
          : map['attemptDurationSeconds'] as int,
    );
  }
}
