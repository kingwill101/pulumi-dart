// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_namespace_args_doc}
class NamespaceArgs {
  /// Optional. Labels for this Namespace.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  final pulumi.Input<String>? name;
  /// Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  final pulumi.Input<Map<String, String>>? namespaceLabels;
  final pulumi.Input<String>? project;
  /// Scope associated with the namespace
  final pulumi.Input<String> scope;
  final pulumi.Input<String> scopeId;
  /// Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> scopeNamespaceId;

  /// Creates a new [NamespaceArgs].
  /// [labels] Optional. Labels for this Namespace.
  /// [location] Optional.
  /// [name] The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  /// [namespaceLabels] Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  /// [project] Optional.
  /// [scope] Scope associated with the namespace
  /// [scopeId] Required.
  /// [scopeNamespaceId] Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  NamespaceArgs({
    Map<String, String>? labels,
    String? location,
    String? name,
    Map<String, String>? namespaceLabels,
    String? project,
    required String scope,
    required String scopeId,
    required String scopeNamespaceId,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(namespaceLabels),
      project = pulumi.Input.asOptionalInput<String>(project),
      scope = pulumi.Input.asInput<String>(scope),
      scopeId = pulumi.Input.asInput<String>(scopeId),
      scopeNamespaceId = pulumi.Input.asInput<String>(scopeNamespaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'namespaceLabels': ?namespaceLabels,
      'project': ?project,
      'scope': scope,
      'scopeId': scopeId,
      'scopeNamespaceId': scopeNamespaceId,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespaceLabels: map['namespaceLabels'] == null ? null : (map['namespaceLabels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      scope: map['scope'] as String,
      scopeId: map['scopeId'] as String,
      scopeNamespaceId: map['scopeNamespaceId'] as String,
    );
  }
}

