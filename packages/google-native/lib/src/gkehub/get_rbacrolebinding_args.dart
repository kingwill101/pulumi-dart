// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_rbacrolebinding_args_doc}
/// Arguments for getRbacrolebinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_rbacrolebinding_args_doc}
class GetRbacrolebindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetRbacrolebindingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  /// [scopeId] Required.
  GetRbacrolebindingArgs({
    required String location,
    String? project,
    required String rbacrolebindingId,
    required String scopeId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       rbacrolebindingId = pulumi.Input.asInput<String>(rbacrolebindingId),
       scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
      'scopeId': scopeId,
    };
  }

  factory GetRbacrolebindingArgs.fromMap(Map<String, dynamic> map) {
    return GetRbacrolebindingArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rbacrolebindingId: map['rbacrolebindingId'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
