// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_job_template_data.dart';

/// {@template pulumi_emrcontainers_job_template_job_template_args_doc}
/// The set of arguments for JobTemplate.
/// {@endtemplate}
/// {@macro pulumi_emrcontainers_job_template_job_template_args_doc}
class JobTemplateArgs {
  /// The job template data which holds values of StartJobRun API request.
  final pulumi.Input<JobTemplateJobTemplateData> jobTemplateData;
  /// The KMS key ARN used to encrypt the job template.
  final pulumi.Input<String>? kmsKeyArn;
  /// The specified name of the job template.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JobTemplateArgs].
  /// [jobTemplateData] The job template data which holds values of StartJobRun API request.
  /// [kmsKeyArn] The KMS key ARN used to encrypt the job template.
  /// [name] The specified name of the job template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const JobTemplateArgs({
    required this.jobTemplateData,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTemplateData': pulumi.Input.mapInputValue<JobTemplateJobTemplateData, Map<String, dynamic>>(jobTemplateData, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      jobTemplateData: pulumi.Input.fromValue(JobTemplateJobTemplateData.fromMap((map['jobTemplateData']! as Map).cast<String, dynamic>())),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
