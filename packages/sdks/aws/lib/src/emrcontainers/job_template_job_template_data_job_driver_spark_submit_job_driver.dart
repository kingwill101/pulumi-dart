// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver {
  /// The entry point of job application.
  final pulumi.Input<String> entryPoint;

  /// The arguments for job application.
  final pulumi.Input<List<String>>? entryPointArguments;

  /// The Spark submit parameters that are used for job runs.
  final pulumi.Input<String>? sparkSubmitParameters;

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
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      entryPointArguments: (() {
        final guardedValue = map['entryPointArguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sparkSubmitParameters: (() {
        final guardedValue = map['sparkSubmitParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
