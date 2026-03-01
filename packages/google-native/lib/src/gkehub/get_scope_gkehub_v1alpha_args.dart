// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_scope_gkehub_v1alpha_args_doc}
/// Arguments for getScope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_scope_gkehub_v1alpha_args_doc}
class GetScopeGkehubV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeGkehubV1alphaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetScopeGkehubV1alphaArgs({
    required String location,
    String? project,
    required String scopeId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetScopeGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeGkehubV1alphaArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
