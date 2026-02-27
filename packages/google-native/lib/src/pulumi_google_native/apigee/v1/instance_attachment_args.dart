// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceAttachment.
class InstanceAttachmentArgs {
  /// ID of the attached environment.
  final pulumi.Input<String>? environment;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  InstanceAttachmentArgs({
    this.environment,
    required this.instanceId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      environment: pulumi.Input.asOptionalInput<String>(map['environment']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
