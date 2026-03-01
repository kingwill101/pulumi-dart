// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionTimeout {
  /// The job timeout time (in seconds) that's measured from the job attempt's startedAt timestamp.
  final int attemptDurationSeconds;

  /// Creates a new [GetJobDefinitionTimeout].
  /// [attemptDurationSeconds] The job timeout time (in seconds) that's measured from the job attempt's startedAt timestamp.
  GetJobDefinitionTimeout({required this.attemptDurationSeconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attemptDurationSeconds': attemptDurationSeconds};
  }

  factory GetJobDefinitionTimeout.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionTimeout(
      attemptDurationSeconds: map['attemptDurationSeconds'] as int,
    );
  }
}
