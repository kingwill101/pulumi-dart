// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNamespaceWorkloadIamPolicy.
class GetNamespaceWorkloadIamPolicyArgs {
  final Input<String> location;
  final Input<String> namespaceId;
  final Input<String>? project;
  final Input<String> workloadId;

  GetNamespaceWorkloadIamPolicyArgs({
    required this.location,
    required this.namespaceId,
    this.project,
    required this.workloadId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadId'] = workloadId;
    return map;
  }

  factory GetNamespaceWorkloadIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceWorkloadIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
      project: Input.asOptionalInput<String>(map['project']),
      workloadId: Input.asInput<String>(map['workloadId']),
    );
  }
}
