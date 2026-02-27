// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNamespaceIamPolicy.
class GetNamespaceIamPolicyArgs {
  final Input<String> location;
  final Input<String> namespaceId;
  final Input<String>? project;

  GetNamespaceIamPolicyArgs({
    required this.location,
    required this.namespaceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
