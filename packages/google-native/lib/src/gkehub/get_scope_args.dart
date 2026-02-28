// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_scope_args_doc}
/// Arguments for getScope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_scope_args_doc}
class GetScopeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetScopeArgs({
    required String location,
    String? project,
    required String scopeId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scopeId'] = scopeId;
    return map;
  }

  factory GetScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
