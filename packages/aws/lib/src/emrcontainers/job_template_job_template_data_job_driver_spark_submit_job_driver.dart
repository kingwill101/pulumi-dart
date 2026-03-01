// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver {
  /// The entry point of job application.
  final String entryPoint;

  /// The arguments for job application.
  final List<String>? entryPointArguments;

  /// The Spark submit parameters that are used for job runs.
  final String? sparkSubmitParameters;

  /// Creates a new [JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver].
  /// [entryPoint] The entry point of job application.
  /// [entryPointArguments] The arguments for job application.
  /// [sparkSubmitParameters] The Spark submit parameters that are used for job runs.
  JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver({
    required this.entryPoint,
    this.entryPointArguments,
    this.sparkSubmitParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryPoint': entryPoint,
      'entryPointArguments': ?entryPointArguments,
      'sparkSubmitParameters': ?sparkSubmitParameters,
    };
  }

  factory JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver(
      entryPoint: map['entryPoint'] as String,
      entryPointArguments: map['entryPointArguments'] == null
          ? null
          : (map['entryPointArguments'] as List).cast<String>(),
      sparkSubmitParameters: map['sparkSubmitParameters'] == null
          ? null
          : map['sparkSubmitParameters'] as String,
    );
  }
}
