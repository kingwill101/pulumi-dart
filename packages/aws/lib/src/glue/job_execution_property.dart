// ignore_for_file: unused_element, unnecessary_cast

class JobExecutionProperty {
  /// The maximum number of concurrent runs allowed for a job. The default is 1.
  final int? maxConcurrentRuns;

  /// Creates a new [JobExecutionProperty].
  /// [maxConcurrentRuns] The maximum number of concurrent runs allowed for a job. The default is 1.
  JobExecutionProperty({this.maxConcurrentRuns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxConcurrentRuns': ?maxConcurrentRuns};
  }

  factory JobExecutionProperty.fromMap(Map<String, dynamic> map) {
    return JobExecutionProperty(
      maxConcurrentRuns: map['maxConcurrentRuns'] == null
          ? null
          : map['maxConcurrentRuns'] as int,
    );
  }
}
