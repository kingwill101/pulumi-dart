// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceIamPolicy.
class GetInstanceIamPolicyArgs11 {
  final Input<String> instanceId;
  final Input<String>? project;

  GetInstanceIamPolicyArgs11({
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

  factory GetInstanceIamPolicyArgs11.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs11(
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
