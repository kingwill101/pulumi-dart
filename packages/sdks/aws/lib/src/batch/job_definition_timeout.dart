// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionTimeout {
  /// Time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is `60` seconds.
  final pulumi.Input<int>? attemptDurationSeconds;

  /// Creates a new [JobDefinitionTimeout].
  /// [attemptDurationSeconds] Time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is `60` seconds.
  JobDefinitionTimeout({
    this.attemptDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptDurationSeconds': ?attemptDurationSeconds,
    };
  }

  factory JobDefinitionTimeout.fromMap(Map<String, dynamic> map) {
    return JobDefinitionTimeout(
      attemptDurationSeconds: (() { final guardedValue = map['attemptDurationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

