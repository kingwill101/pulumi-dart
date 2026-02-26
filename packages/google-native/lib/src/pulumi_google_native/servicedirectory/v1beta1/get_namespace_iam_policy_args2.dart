// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNamespaceIamPolicy.
class GetNamespaceIamPolicyArgs2 {
  final Input<String> location;
  final Input<String> namespaceId;
  final Input<String>? project;

  GetNamespaceIamPolicyArgs2({
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

  factory GetNamespaceIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIamPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
