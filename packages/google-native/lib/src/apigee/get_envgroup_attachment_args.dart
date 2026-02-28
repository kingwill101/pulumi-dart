// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_envgroup_attachment_args_doc}
/// Arguments for getEnvgroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_envgroup_attachment_args_doc}
class GetEnvgroupAttachmentArgs {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> envgroupId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEnvgroupAttachmentArgs].
  /// [attachmentId] Required.
  /// [envgroupId] Required.
  /// [organizationId] Required.
  GetEnvgroupAttachmentArgs({
    required String attachmentId,
    required String envgroupId,
    required String organizationId,
  })  : attachmentId = pulumi.Input.asInput<String>(attachmentId),
        envgroupId = pulumi.Input.asInput<String>(envgroupId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['envgroupId'] = envgroupId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupAttachmentArgs(
      attachmentId: map['attachmentId'] as String,
      envgroupId: map['envgroupId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
