// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionTimeout {
  /// The job timeout time (in seconds) that's measured from the job attempt's startedAt timestamp.
  final int attemptDurationSeconds;

  GetJobDefinitionTimeout({
    required this.attemptDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attemptDurationSeconds'] = attemptDurationSeconds;
    return map;
  }

  factory GetJobDefinitionTimeout.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionTimeout(
      attemptDurationSeconds: map['attemptDurationSeconds'] as int,
    );
  }
}
