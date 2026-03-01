// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_job_template_data.dart';

/// Input properties used for looking up and filtering JobTemplate resources.
class JobTemplateState {
  /// ARN of the job template.
  final pulumi.Input<String>? arn;
  /// The job template data which holds values of StartJobRun API request.
  final pulumi.Input<JobTemplateJobTemplateData>? jobTemplateData;
  /// The KMS key ARN used to encrypt the job template.
  final pulumi.Input<String>? kmsKeyArn;
  /// The specified name of the job template.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [JobTemplateState].
  /// [arn] ARN of the job template.
  /// [jobTemplateData] The job template data which holds values of StartJobRun API request.
  /// [kmsKeyArn] The KMS key ARN used to encrypt the job template.
  /// [name] The specified name of the job template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  JobTemplateState({
    pulumi.Output<String>? arn,
    pulumi.Output<JobTemplateJobTemplateData>? jobTemplateData,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      jobTemplateData = pulumi.Input.asOptionalInput<JobTemplateJobTemplateData>(jobTemplateData),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'jobTemplateData': ?pulumi.Input.mapOptionalInputValue<JobTemplateJobTemplateData, Map<String, dynamic>>(jobTemplateData, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory JobTemplateState.fromMap(Map<String, dynamic> map) {
    return JobTemplateState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      jobTemplateData: map['jobTemplateData'] == null ? null : pulumi.Output.create<JobTemplateJobTemplateData>(JobTemplateJobTemplateData.fromMap((map['jobTemplateData'] as Map).cast<String, dynamic>())),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

