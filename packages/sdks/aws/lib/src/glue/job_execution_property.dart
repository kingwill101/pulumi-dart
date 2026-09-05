// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobExecutionProperty {
  /// The maximum number of concurrent runs allowed for a job. The default is 1.
  final pulumi.Input<int?>? maxConcurrentRuns;

  /// Creates a new [JobExecutionProperty].
  /// [maxConcurrentRuns] The maximum number of concurrent runs allowed for a job. The default is 1.
  const JobExecutionProperty({
    this.maxConcurrentRuns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRuns': ?maxConcurrentRuns,
    };
  }

  factory JobExecutionProperty.fromMap(Map<String, dynamic> map) {
    return JobExecutionProperty(
      maxConcurrentRuns: (() { final guardedValue = map['maxConcurrentRuns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
