// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_job_template_data_configuration_overrides.dart';
import 'job_template_job_template_data_job_driver.dart';

class JobTemplateJobTemplateData {
  /// The configuration settings that are used to override defaults configuration.
  final pulumi.Input<JobTemplateJobTemplateDataConfigurationOverrides>? configurationOverrides;
  /// The execution role ARN of the job run.
  final pulumi.Input<String> executionRoleArn;
  /// Specify the driver that the job runs on. Exactly one of the two available job drivers is required, either sparkSqlJobDriver or sparkSubmitJobDriver.
  final pulumi.Input<JobTemplateJobTemplateDataJobDriver> jobDriver;
  /// The tags assigned to jobs started using the job template.
  final pulumi.Input<Map<String, String>>? jobTags;
  /// The release version of Amazon EMR.
  final pulumi.Input<String> releaseLabel;

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
    return <String, dynamic>{
      'configurationOverrides': ?pulumi.Input.mapOptionalInputValue<JobTemplateJobTemplateDataConfigurationOverrides, Map<String, dynamic>>(configurationOverrides, (value) => value.toMap()),
      'executionRoleArn': executionRoleArn,
      'jobDriver': pulumi.Input.mapInputValue<JobTemplateJobTemplateDataJobDriver, Map<String, dynamic>>(jobDriver, (value) => value.toMap()),
      'jobTags': ?jobTags,
      'releaseLabel': releaseLabel,
    };
  }

  factory JobTemplateJobTemplateData.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateData(
      configurationOverrides: (() { final guardedValue = map['configurationOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateJobTemplateDataConfigurationOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      jobDriver: pulumi.Input.fromValue(JobTemplateJobTemplateDataJobDriver.fromMap((map['jobDriver']! as Map).cast<String, dynamic>())),
      jobTags: (() { final guardedValue = map['jobTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      releaseLabel: pulumi.Input.fromValue(map['releaseLabel'] as String),
    );
  }
}

