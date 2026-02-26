// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceAttachment.
class InstanceAttachmentArgs {
  /// ID of the attached environment.
  final Input<String>? environment;
  final Input<String> instanceId;
  final Input<String> organizationId;

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
      environment: Input.asOptionalInput<String>(map['environment']),
      instanceId: Input.asInput<String>(map['instanceId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
