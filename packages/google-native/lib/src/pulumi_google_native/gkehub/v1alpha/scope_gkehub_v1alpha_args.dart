// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Scope.
class ScopeGkehubV1alphaArgs {
  /// Optional. Labels for this Scope.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  final pulumi.Input<String>? name;

  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  final pulumi.Input<String>? project;

  /// Required. Client chosen ID for the Scope. `scope_id` must be a ????
  final pulumi.Input<String> scopeId;

  ScopeGkehubV1alphaArgs({
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

  factory ScopeGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ScopeGkehubV1alphaArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namespaceLabels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['namespaceLabels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
    );
  }
}
