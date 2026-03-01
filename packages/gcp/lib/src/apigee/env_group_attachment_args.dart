// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_env_group_attachment_env_group_attachment_args_doc}
/// The set of arguments for EnvGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_env_group_attachment_env_group_attachment_args_doc}
class EnvGroupAttachmentArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  final pulumi.Input<String> envgroupId;
  /// The resource ID of the environment.
  final pulumi.Input<String> environment;

  /// Creates a new [EnvGroupAttachmentArgs].
  /// [envgroupId] The Apigee environment group associated with the Apigee environment,
  /// [environment] The resource ID of the environment.
  EnvGroupAttachmentArgs({
    required String envgroupId,
    required String environment,
  }) :
      envgroupId = pulumi.Input.asInput<String>(envgroupId),
      environment = pulumi.Input.asInput<String>(environment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envgroupId': envgroupId,
      'environment': environment,
    };
  }

  factory EnvGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvGroupAttachmentArgs(
      envgroupId: map['envgroupId'] as String,
      environment: map['environment'] as String,
    );
  }
}

