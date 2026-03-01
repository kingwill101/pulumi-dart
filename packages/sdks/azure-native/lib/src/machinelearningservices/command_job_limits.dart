// ignore_for_file: unused_element, unnecessary_cast


/// Command Job limit class.
class CommandJobLimits {
  /// Expected value is 'Command'.
  final String jobLimitsType;
  /// The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  final String? timeout;

  /// Creates a new [CommandJobLimits].
  /// [jobLimitsType] Expected value is 'Command'.
  /// [timeout] The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  CommandJobLimits({
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
      jobLimitsType: map['jobLimitsType'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

