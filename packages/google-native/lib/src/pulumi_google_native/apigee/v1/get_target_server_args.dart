// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetServer.
class GetTargetServerArgs {
  final Input<String> environmentId;
  final Input<String> organizationId;
  final Input<String> targetserverId;

  GetTargetServerArgs({
    required this.environmentId,
    required this.organizationId,
    required this.targetserverId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['targetserverId'] = targetserverId;
    return map;
  }

  factory GetTargetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetServerArgs(
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      targetserverId: Input.asInput<String>(map['targetserverId']),
    );
  }
}
