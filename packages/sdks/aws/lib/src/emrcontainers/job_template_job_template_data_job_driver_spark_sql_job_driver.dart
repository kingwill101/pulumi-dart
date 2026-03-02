// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver {
  /// The SQL file to be executed.
  final pulumi.Input<String>? entryPoint;
  /// The Spark parameters to be included in the Spark SQL command.
  final pulumi.Input<String>? sparkSqlParameters;

  /// Creates a new [JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver].
  /// [entryPoint] The SQL file to be executed.
  /// [sparkSqlParameters] The Spark parameters to be included in the Spark SQL command.
  JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver({
    this.entryPoint,
    this.sparkSqlParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryPoint': ?entryPoint,
      'sparkSqlParameters': ?sparkSqlParameters,
    };
  }

  factory JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver(
      entryPoint: map['entryPoint'] == null ? null : ((map['entryPoint'] as String).input()).input(),
      sparkSqlParameters: map['sparkSqlParameters'] == null ? null : ((map['sparkSqlParameters'] as String).input()).input(),
    );
  }
}

