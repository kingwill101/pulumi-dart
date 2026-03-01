// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_job_template_data_job_driver_spark_sql_job_driver.dart';
import 'job_template_job_template_data_job_driver_spark_submit_job_driver.dart';

class JobTemplateJobTemplateDataJobDriver {
  /// The job driver for job type.
  final JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver? sparkSqlJobDriver;

  /// The job driver parameters specified for spark submit.
  final JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver?
  sparkSubmitJobDriver;

  /// Creates a new [JobTemplateJobTemplateDataJobDriver].
  /// [sparkSqlJobDriver] The job driver for job type.
  /// [sparkSubmitJobDriver] The job driver parameters specified for spark submit.
  JobTemplateJobTemplateDataJobDriver({
    this.sparkSqlJobDriver,
    this.sparkSubmitJobDriver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkSqlJobDriver': ?sparkSqlJobDriver == null
          ? null
          : sparkSqlJobDriver!.toMap(),
      'sparkSubmitJobDriver': ?sparkSubmitJobDriver == null
          ? null
          : sparkSubmitJobDriver!.toMap(),
    };
  }

  factory JobTemplateJobTemplateDataJobDriver.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobTemplateJobTemplateDataJobDriver(
      sparkSqlJobDriver: map['sparkSqlJobDriver'] == null
          ? null
          : JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver.fromMap(
              (map['sparkSqlJobDriver'] as Map).cast<String, dynamic>(),
            ),
      sparkSubmitJobDriver: map['sparkSubmitJobDriver'] == null
          ? null
          : JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver.fromMap(
              (map['sparkSubmitJobDriver'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
