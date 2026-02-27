// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstanceIamPolicy.
class GetInstanceIamPolicyArgs2 {
  final Input<String> instanceId;
  final Input<String>? project;

  GetInstanceIamPolicyArgs2({
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

  factory GetInstanceIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs2(
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
