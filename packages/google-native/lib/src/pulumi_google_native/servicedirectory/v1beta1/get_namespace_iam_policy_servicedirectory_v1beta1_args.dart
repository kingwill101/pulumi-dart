// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNamespaceIamPolicy.
class GetNamespaceIamPolicyServicedirectoryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;

  GetNamespaceIamPolicyServicedirectoryV1beta1Args({
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

  factory GetNamespaceIamPolicyServicedirectoryV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNamespaceIamPolicyServicedirectoryV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
