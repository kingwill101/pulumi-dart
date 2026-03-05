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
      entryPoint: (() { final guardedValue = map['entryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkSqlParameters: (() { final guardedValue = map['sparkSqlParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

