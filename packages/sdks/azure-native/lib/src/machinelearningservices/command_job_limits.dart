// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Command Job limit class.
class CommandJobLimits {
  /// Expected value is 'Command'.
  final pulumi.Input<String> jobLimitsType;
  /// The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  final pulumi.Input<String>? timeout;

  /// Creates a new [CommandJobLimits].
  /// [jobLimitsType] Expected value is 'Command'.
  /// [timeout] The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  const CommandJobLimits({
    required this.jobLimitsType,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobLimitsType': jobLimitsType,
      'timeout': ?timeout,
    };
  }

  factory CommandJobLimits.fromMap(Map<String, dynamic> map) {
    return CommandJobLimits(
      jobLimitsType: pulumi.Input.fromValue(map['jobLimitsType'] as String),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
