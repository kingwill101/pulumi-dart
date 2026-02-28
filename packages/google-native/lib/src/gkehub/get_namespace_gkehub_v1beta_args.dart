// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_namespace_gkehub_v1beta_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_namespace_gkehub_v1beta_args_doc}
class GetNamespaceGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetNamespaceGkehubV1betaArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetNamespaceGkehubV1betaArgs({
    required String location,
    required String namespaceId,
    String? project,
    required String scopeId,
  })  : location = pulumi.Input.asInput<String>(location),
        namespaceId = pulumi.Input.asInput<String>(namespaceId),
        project = pulumi.Input.asOptionalInput<String>(project),
        scopeId = pulumi.Input.asInput<String>(scopeId);

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

  factory GetNamespaceGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceGkehubV1betaArgs(
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
