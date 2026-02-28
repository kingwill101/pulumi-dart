// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_envgroup_attachment_args_doc}
/// The set of arguments for EnvgroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_envgroup_attachment_args_doc}
class EnvgroupAttachmentArgs {
  final pulumi.Input<String> envgroupId;
  /// ID of the attached environment.
  final pulumi.Input<String> environment;
  /// ID of the environment group attachment.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [EnvgroupAttachmentArgs].
  /// [envgroupId] Required.
  /// [environment] ID of the attached environment.
  /// [name] ID of the environment group attachment.
  /// [organizationId] Required.
  EnvgroupAttachmentArgs({
    required String envgroupId,
    required String environment,
    String? name,
    required String organizationId,
  }) :
      envgroupId = pulumi.Input.asInput<String>(envgroupId),
      environment = pulumi.Input.asInput<String>(environment),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envgroupId': envgroupId,
      'environment': environment,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory EnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvgroupAttachmentArgs(
      envgroupId: map['envgroupId'] as String,
      environment: map['environment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

