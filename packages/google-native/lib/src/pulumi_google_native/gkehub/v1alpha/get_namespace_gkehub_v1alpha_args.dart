// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNamespace.
class GetNamespaceGkehubV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  GetNamespaceGkehubV1alphaArgs({
    required this.location,
    required this.namespaceId,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scopeId'] = scopeId;
    return map;
  }

  factory GetNamespaceGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceGkehubV1alphaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
    );
  }
}
