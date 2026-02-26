// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvGroupAttachment.
class EnvGroupAttachmentArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  final Input<String> envgroupId;

  /// The resource ID of the environment.
  final Input<String> environment;

  EnvGroupAttachmentArgs({
    required this.envgroupId,
    required this.environment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envgroupId'] = envgroupId;
    map['environment'] = environment;
    return map;
  }

  factory EnvGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvGroupAttachmentArgs(
      envgroupId: Input.asInput<String>(map['envgroupId']),
      environment: Input.asInput<String>(map['environment']),
    );
  }
}
