// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Namespace.
class NamespaceArgs {
  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (`namespace_labels` in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the Scope instance.
  final pulumi.Input<String> scope;

  /// Id of the scope
  final pulumi.Input<String> scopeId;

  /// The client-provided identifier of the namespace.
  final pulumi.Input<String> scopeNamespaceId;

  NamespaceArgs({
    this.labels,
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
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      namespaceLabels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['namespaceLabels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scope: pulumi.Input.asInput<String>(map['scope']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
      scopeNamespaceId: pulumi.Input.asInput<String>(map['scopeNamespaceId']),
    );
  }
}
