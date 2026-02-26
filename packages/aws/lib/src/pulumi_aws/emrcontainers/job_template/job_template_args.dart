// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_template_job_template_data/job_template_job_template_data.dart';

/// The set of arguments for JobTemplate.
class JobTemplateArgs {
  /// The job template data which holds values of StartJobRun API request.
  final Input<JobTemplateJobTemplateData> jobTemplateData;

  /// The KMS key ARN used to encrypt the job template.
  final Input<String>? kmsKeyArn;

  /// The specified name of the job template.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  JobTemplateArgs({
    required this.jobTemplateData,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobTemplateData'] =
        Input.mapInputValue<JobTemplateJobTemplateData, Map<String, dynamic>>(
            jobTemplateData, (value) => value.toMap());
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      jobTemplateData:
          Input.asInput<JobTemplateJobTemplateData>(map['jobTemplateData']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
