// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_job_definition_get_job_definition_args_doc}
/// Arguments for getJobDefinition.
/// {@endtemplate}
/// {@macro pulumi_batch_get_job_definition_get_job_definition_args_doc}
class GetJobDefinitionArgs {
  /// ARN of the Job Definition.
  final pulumi.Input<String?>? arn;
  /// Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Revision of the job definition.
  final pulumi.Input<int?>? revision;
  /// Status of the job definition.
  final pulumi.Input<String?>? status;

  /// Creates a new [GetJobDefinitionArgs].
  /// [arn] ARN of the Job Definition.
  /// [name] Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revision] Revision of the job definition.
  /// [status] Status of the job definition.
  const GetJobDefinitionArgs({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
