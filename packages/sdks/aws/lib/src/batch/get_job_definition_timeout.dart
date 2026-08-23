// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionTimeout {
  /// Job timeout time (in seconds) that's measured from the job attempt's startedAt timestamp.
  final pulumi.Input<int> attemptDurationSeconds;

  /// Creates a new [GetJobDefinitionTimeout].
  /// [attemptDurationSeconds] Job timeout time (in seconds) that's measured from the job attempt's startedAt timestamp.
  const GetJobDefinitionTimeout({
    required this.attemptDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptDurationSeconds': attemptDurationSeconds,
    };
  }

  factory GetJobDefinitionTimeout.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionTimeout(
      attemptDurationSeconds: pulumi.Input.fromValue(map['attemptDurationSeconds'] as int),
    );
  }
}
