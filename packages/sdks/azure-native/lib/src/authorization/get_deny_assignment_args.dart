// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_deny_assignment_args_doc}
/// Arguments for getDenyAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_deny_assignment_args_doc}
class GetDenyAssignmentArgs {
  /// The ID of the deny assignment to get.
  final pulumi.Input<String> denyAssignmentId;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetDenyAssignmentArgs].
  /// [denyAssignmentId] The ID of the deny assignment to get.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  const GetDenyAssignmentArgs({
    required this.denyAssignmentId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyAssignmentId': denyAssignmentId,
      'scope': scope,
    };
  }

  factory GetDenyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetDenyAssignmentArgs(
      denyAssignmentId: pulumi.Input.fromValue(map['denyAssignmentId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
