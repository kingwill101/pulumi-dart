// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Namespace.
class NamespaceArgs {
  /// Optional. Labels for this Namespace.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  final Input<String>? name;

  /// Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  final Input<Map<String, String>>? namespaceLabels;
  final Input<String>? project;

  /// Scope associated with the namespace
  final Input<String> scope;
  final Input<String> scopeId;

  /// Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final Input<String> scopeNamespaceId;

  NamespaceArgs({
    this.labels,
    this.location,
    this.name,
    this.namespaceLabels,
    this.project,
    required this.scope,
    required this.scopeId,
    required this.scopeNamespaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namespaceLabelsValue = namespaceLabels;
    if (namespaceLabelsValue != null) {
      map['namespaceLabels'] = namespaceLabelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scope'] = scope;
    map['scopeId'] = scopeId;
    map['scopeNamespaceId'] = scopeNamespaceId;
    return map;
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      namespaceLabels:
          Input.asOptionalInput<Map<String, String>>(map['namespaceLabels']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asInput<String>(map['scope']),
      scopeId: Input.asInput<String>(map['scopeId']),
      scopeNamespaceId: Input.asInput<String>(map['scopeNamespaceId']),
    );
  }
}
