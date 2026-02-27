// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceAttachment.
class InstanceAttachmentArgs {
  /// The resource ID of the environment.
  final pulumi.Input<String> environment;

  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String> instanceId;

  InstanceAttachmentArgs({
    required this.environment,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environment'] = environment;
    map['instanceId'] = instanceId;
    return map;
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      environment: pulumi.Input.asInput<String>(map['environment']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
    );
  }
}
