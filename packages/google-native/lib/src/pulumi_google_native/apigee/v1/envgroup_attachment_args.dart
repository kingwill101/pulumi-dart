// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvgroupAttachment.
class EnvgroupAttachmentArgs {
  final Input<String> envgroupId;

  /// ID of the attached environment.
  final Input<String> environment;

  /// ID of the environment group attachment.
  final Input<String>? name;
  final Input<String> organizationId;

  EnvgroupAttachmentArgs({
    required this.envgroupId,
    required this.environment,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envgroupId'] = envgroupId;
    map['environment'] = environment;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory EnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvgroupAttachmentArgs(
      envgroupId: Input.asInput<String>(map['envgroupId']),
      environment: Input.asInput<String>(map['environment']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
