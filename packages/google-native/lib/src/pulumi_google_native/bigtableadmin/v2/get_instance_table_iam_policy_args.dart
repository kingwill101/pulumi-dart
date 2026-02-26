// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceTableIamPolicy.
class GetInstanceTableIamPolicyArgs {
  final Input<String> instanceId;
  final Input<String>? project;
  final Input<String> tableId;

  GetInstanceTableIamPolicyArgs({
    required this.instanceId,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tableId'] = tableId;
    return map;
  }

  factory GetInstanceTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTableIamPolicyArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
      tableId: Input.asInput<String>(map['tableId']),
    );
  }
}
