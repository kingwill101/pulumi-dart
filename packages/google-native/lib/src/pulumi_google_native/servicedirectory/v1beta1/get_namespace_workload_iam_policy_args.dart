// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNamespaceWorkloadIamPolicy.
class GetNamespaceWorkloadIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workloadId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workloadId: pulumi.Input.asInput<String>(map['workloadId']),
    );
  }
}
