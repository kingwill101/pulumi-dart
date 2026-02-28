// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_job_template_data_configuration_overrides.dart';
import 'job_template_job_template_data_job_driver.dart';

class JobTemplateJobTemplateData {
  /// The configuration settings that are used to override defaults configuration.
  final JobTemplateJobTemplateDataConfigurationOverrides?
      configurationOverrides;

  /// The execution role ARN of the job run.
  final String executionRoleArn;

  /// Specify the driver that the job runs on. Exactly one of the two available job drivers is required, either sparkSqlJobDriver or sparkSubmitJobDriver.
  final JobTemplateJobTemplateDataJobDriver jobDriver;

  /// The tags assigned to jobs started using the job template.
  final Map<String, String>? jobTags;

  /// The release version of Amazon EMR.
  final String releaseLabel;

  /// Creates a new [JobTemplateJobTemplateData].
  /// [configurationOverrides] The configuration settings that are used to override defaults configuration.
  /// [executionRoleArn] The execution role ARN of the job run.
  /// [jobDriver] Specify the driver that the job runs on. Exactly one of the two available job drivers is required, either sparkSqlJobDriver or sparkSubmitJobDriver.
  /// [jobTags] The tags assigned to jobs started using the job template.
  /// [releaseLabel] The release version of Amazon EMR.
  JobTemplateJobTemplateData({
    this.configurationOverrides,
    required this.executionRoleArn,
    required this.jobDriver,
    this.jobTags,
    required this.releaseLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationOverridesValue = configurationOverrides;
    if (configurationOverridesValue != null) {
      map['configurationOverrides'] = configurationOverridesValue.toMap();
    }
    map['executionRoleArn'] = executionRoleArn;
    map['jobDriver'] = jobDriver.toMap();
    final jobTagsValue = jobTags;
    if (jobTagsValue != null) {
      map['jobTags'] = jobTagsValue;
    }
    map['releaseLabel'] = releaseLabel;
    return map;
  }

  factory JobTemplateJobTemplateData.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateData(
      configurationOverrides: map['configurationOverrides'] == null
          ? null
          : JobTemplateJobTemplateDataConfigurationOverrides.fromMap(
              (map['configurationOverrides'] as Map).cast<String, dynamic>()),
      executionRoleArn: map['executionRoleArn'] as String,
      jobDriver: JobTemplateJobTemplateDataJobDriver.fromMap(
          (map['jobDriver'] as Map).cast<String, dynamic>()),
      jobTags: map['jobTags'] == null
          ? null
          : (map['jobTags'] as Map).cast<String, String>(),
      releaseLabel: map['releaseLabel'] as String,
    );
  }
}
