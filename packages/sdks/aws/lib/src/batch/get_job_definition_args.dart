// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_job_definition_get_job_definition_args_doc}
/// Arguments for getJobDefinition.
/// {@endtemplate}
/// {@macro pulumi_batch_get_job_definition_get_job_definition_args_doc}
class GetJobDefinitionArgs {
  /// ARN of the Job Definition. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  final pulumi.Input<String>? arn;
  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The revision of the job definition.
  final pulumi.Input<int>? revision;
  /// The status of the job definition.
  final pulumi.Input<String>? status;

  /// Creates a new [GetJobDefinitionArgs].
  /// [arn] ARN of the Job Definition. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revision] The revision of the job definition.
  /// [status] The status of the job definition.
  GetJobDefinitionArgs({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<int>? revision,
    pulumi.Output<String>? status,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      revision = pulumi.Input.asOptionalInput<int>(revision),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'revision': ?revision,
      'status': ?status,
    };
  }

  factory GetJobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionArgs(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<int>(map['revision'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

