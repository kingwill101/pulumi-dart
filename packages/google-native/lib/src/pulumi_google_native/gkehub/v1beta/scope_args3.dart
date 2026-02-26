// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Scope.
class ScopeArgs3 {
  /// Optional. Labels for this Scope.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  final Input<String>? name;

  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  final Input<Map<String, String>>? namespaceLabels;
  final Input<String>? project;

  /// Required. Client chosen ID for the Scope. `scope_id` must be a ????
  final Input<String> scopeId;

  ScopeArgs3({
    this.labels,
    this.location,
    this.name,
    this.namespaceLabels,
    this.project,
    required this.scopeId,
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
    map['scopeId'] = scopeId;
    return map;
  }

  factory ScopeArgs3.fromMap(Map<String, dynamic> map) {
    return ScopeArgs3(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      namespaceLabels:
          Input.asOptionalInput<Map<String, String>>(map['namespaceLabels']),
      project: Input.asOptionalInput<String>(map['project']),
      scopeId: Input.asInput<String>(map['scopeId']),
    );
  }
}
