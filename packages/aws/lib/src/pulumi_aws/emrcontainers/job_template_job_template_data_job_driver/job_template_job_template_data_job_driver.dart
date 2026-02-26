// ignore_for_file: unused_element, unnecessary_cast

import '../job_template_job_template_data_job_driver_spark_sql_job_driver/job_template_job_template_data_job_driver_spark_sql_job_driver.dart';
import '../job_template_job_template_data_job_driver_spark_submit_job_driver/job_template_job_template_data_job_driver_spark_submit_job_driver.dart';

class JobTemplateJobTemplateDataJobDriver {
  /// The job driver for job type.
  final JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver? sparkSqlJobDriver;

  /// The job driver parameters specified for spark submit.
  final JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver?
      sparkSubmitJobDriver;

  JobTemplateJobTemplateDataJobDriver({
    this.sparkSqlJobDriver,
    this.sparkSubmitJobDriver,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sparkSqlJobDriverValue = sparkSqlJobDriver;
    if (sparkSqlJobDriverValue != null) {
      map['sparkSqlJobDriver'] = sparkSqlJobDriverValue.toMap();
    }
    final sparkSubmitJobDriverValue = sparkSubmitJobDriver;
    if (sparkSubmitJobDriverValue != null) {
      map['sparkSubmitJobDriver'] = sparkSubmitJobDriverValue.toMap();
    }
    return map;
  }

  factory JobTemplateJobTemplateDataJobDriver.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataJobDriver(
      sparkSqlJobDriver: map['sparkSqlJobDriver'] == null
          ? null
          : JobTemplateJobTemplateDataJobDriverSparkSqlJobDriver.fromMap(
              (map['sparkSqlJobDriver'] as Map).cast<String, dynamic>()),
      sparkSubmitJobDriver: map['sparkSubmitJobDriver'] == null
          ? null
          : JobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver.fromMap(
              (map['sparkSubmitJobDriver'] as Map).cast<String, dynamic>()),
    );
  }
}
