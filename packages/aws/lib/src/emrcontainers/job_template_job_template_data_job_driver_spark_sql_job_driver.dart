// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver {
  /// The SQL file to be executed.
  final String? entryPoint;

  /// The Spark parameters to be included in the Spark SQL command.
  final String? sparkSqlParameters;

  /// Creates a new [JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver].
  /// [entryPoint] The SQL file to be executed.
  /// [sparkSqlParameters] The Spark parameters to be included in the Spark SQL command.
  JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver({
    this.entryPoint,
    this.sparkSqlParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entryPointValue = entryPoint;
    if (entryPointValue != null) {
      map['entryPoint'] = entryPointValue;
    }
    final sparkSqlParametersValue = sparkSqlParameters;
    if (sparkSqlParametersValue != null) {
      map['sparkSqlParameters'] = sparkSqlParametersValue;
    }
    return map;
  }

  factory JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver(
      entryPoint:
          map['entryPoint'] == null ? null : map['entryPoint'] as String,
      sparkSqlParameters: map['sparkSqlParameters'] == null
          ? null
          : map['sparkSqlParameters'] as String,
    );
  }
}
