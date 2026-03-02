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
    this.arn,
    this.name,
    this.region,
    this.revision,
    this.status,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      revision: map['revision'] == null ? null : ((map['revision'] as int).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

