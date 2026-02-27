// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceRemotebuildexecutionV1alphaArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetInstanceRemotebuildexecutionV1alphaArgs({
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceRemotebuildexecutionV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceRemotebuildexecutionV1alphaArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
