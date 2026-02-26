// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Namespace.
class NamespaceArgs {
  /// Labels for this Namespace.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Namespace-level cluster namespace labels. These labels are applied
  /// to the related namespace of the member clusters bound to the parent
  /// Scope. Scope-level labels (<span pulumi-lang-nodejs="`namespaceLabels`" pulumi-lang-dotnet="`NamespaceLabels`" pulumi-lang-go="`namespaceLabels`" pulumi-lang-python="`namespace_labels`" pulumi-lang-yaml="`namespaceLabels`" pulumi-lang-java="`namespaceLabels`">`namespace_labels`</span> in the Fleet Scope
  /// resource) take precedence over Namespace-level labels if they share
  /// a key. Keys and values must be Kubernetes-conformant.
  final Input<Map<String, String>>? namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the Scope instance.
  final Input<String> scope;

  /// Id of the scope
  final Input<String> scopeId;

  /// The client-provided identifier of the namespace.
  final Input<String> scopeNamespaceId;

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
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      namespaceLabels:
          Input.asOptionalInput<Map<String, String>>(map['namespaceLabels']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asInput<String>(map['scope']),
      scopeId: Input.asInput<String>(map['scopeId']),
      scopeNamespaceId: Input.asInput<String>(map['scopeNamespaceId']),
    );
  }
}
