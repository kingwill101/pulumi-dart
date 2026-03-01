// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_namespace_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_namespace_args_doc}
class GetNamespaceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetNamespaceArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetNamespaceArgs({
    required String location,
    required String namespaceId,
    String? project,
    required String scopeId,
  }) : location = pulumi.Input.asInput<String>(location),
       namespaceId = pulumi.Input.asInput<String>(namespaceId),
       project = pulumi.Input.asOptionalInput<String>(project),
       scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceArgs(
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
