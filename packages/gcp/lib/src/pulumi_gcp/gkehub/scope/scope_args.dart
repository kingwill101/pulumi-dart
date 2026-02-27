// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Scope.
class ScopeArgs {
  /// Labels for this Scope.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Scope-level cluster namespace labels. For the member clusters bound
  /// to the Scope, these labels are applied to each namespace under the
  /// Scope. Scope-level labels take precedence over Namespace-level
  /// labels (`namespace_labels` in the Fleet Namespace resource) if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The client-provided identifier of the scope.
  final pulumi.Input<String> scopeId;

  ScopeArgs({
    this.labels,
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

  factory ScopeArgs.fromMap(Map<String, dynamic> map) {
    return ScopeArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      namespaceLabels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['namespaceLabels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
    );
  }
}
