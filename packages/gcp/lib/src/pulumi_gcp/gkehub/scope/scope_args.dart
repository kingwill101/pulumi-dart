// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Scope.
class ScopeArgs {
  /// Labels for this Scope.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Scope-level cluster namespace labels. For the member clusters bound
  /// to the Scope, these labels are applied to each namespace under the
  /// Scope. Scope-level labels take precedence over Namespace-level
  /// labels (<span pulumi-lang-nodejs="`namespaceLabels`" pulumi-lang-dotnet="`NamespaceLabels`" pulumi-lang-go="`namespaceLabels`" pulumi-lang-python="`namespace_labels`" pulumi-lang-yaml="`namespaceLabels`" pulumi-lang-java="`namespaceLabels`">`namespace_labels`</span> in the Fleet Namespace resource) if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  final Input<Map<String, String>>? namespaceLabels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The client-provided identifier of the scope.
  final Input<String> scopeId;

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
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      namespaceLabels:
          Input.asOptionalInput<Map<String, String>>(map['namespaceLabels']),
      project: Input.asOptionalInput<String>(map['project']),
      scopeId: Input.asInput<String>(map['scopeId']),
    );
  }
}
