// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetServer.
class GetTargetServerArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> targetserverId;

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
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      targetserverId: pulumi.Input.asInput<String>(map['targetserverId']),
    );
  }
}
