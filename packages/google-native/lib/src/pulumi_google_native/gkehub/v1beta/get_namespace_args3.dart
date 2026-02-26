// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNamespace.
class GetNamespaceArgs3 {
  final Input<String> location;
  final Input<String> namespaceId;
  final Input<String>? project;
  final Input<String> scopeId;

  GetNamespaceArgs3({
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

  factory GetNamespaceArgs3.fromMap(Map<String, dynamic> map) {
    return GetNamespaceArgs3(
      location: Input.asInput<String>(map['location']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
      project: Input.asOptionalInput<String>(map['project']),
      scopeId: Input.asInput<String>(map['scopeId']),
    );
  }
}
