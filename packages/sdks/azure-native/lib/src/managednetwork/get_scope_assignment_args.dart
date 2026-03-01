// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetwork_get_scope_assignment_args_doc}
/// Arguments for getScopeAssignment.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_get_scope_assignment_args_doc}
class GetScopeAssignmentArgs {
  /// The base resource of the scope assignment.
  final pulumi.Input<String> scope;
  /// The name of the scope assignment to get.
  final pulumi.Input<String> scopeAssignmentName;

  /// Creates a new [GetScopeAssignmentArgs].
  /// [scope] The base resource of the scope assignment.
  /// [scopeAssignmentName] The name of the scope assignment to get.
  GetScopeAssignmentArgs({
    required pulumi.Output<String> scope,
    required pulumi.Output<String> scopeAssignmentName,
  }) :
      scope = pulumi.Input.asInput<String>(scope),
      scopeAssignmentName = pulumi.Input.asInput<String>(scopeAssignmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'scopeAssignmentName': scopeAssignmentName,
    };
  }

  factory GetScopeAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeAssignmentArgs(
      scope: pulumi.Output.create<String>(map['scope'] as String),
      scopeAssignmentName: pulumi.Output.create<String>(map['scopeAssignmentName'] as String),
    );
  }
}

