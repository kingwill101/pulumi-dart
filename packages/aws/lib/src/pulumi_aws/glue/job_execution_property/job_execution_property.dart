// ignore_for_file: unused_element, unnecessary_cast

class JobExecutionProperty {
  /// The maximum number of concurrent runs allowed for a job. The default is 1.
  final int? maxConcurrentRuns;

  JobExecutionProperty({
    this.maxConcurrentRuns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxConcurrentRunsValue = maxConcurrentRuns;
    if (maxConcurrentRunsValue != null) {
      map['maxConcurrentRuns'] = maxConcurrentRunsValue;
    }
    return map;
  }

  factory JobExecutionProperty.fromMap(Map<String, dynamic> map) {
    return JobExecutionProperty(
      maxConcurrentRuns: map['maxConcurrentRuns'] == null
          ? null
          : map['maxConcurrentRuns'] as int,
    );
  }
}
