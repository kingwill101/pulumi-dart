// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_role_association_role_association_args_doc}
/// The set of arguments for RoleAssociation.
/// {@endtemplate}
/// {@macro pulumi_grafana_role_association_role_association_args_doc}
class RoleAssociationArgs {
  /// AWS SSO group IDs to be assigned the role given in `role`.
  final pulumi.Input<List<String>?>? groupIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  final pulumi.Input<String> role;
  /// AWS SSO user IDs to be assigned the role given in `role`.
  final pulumi.Input<List<String>?>? userIds;
  /// Workspace ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceId;

  /// Creates a new [RoleAssociationArgs].
  /// [groupIds] AWS SSO group IDs to be assigned the role given in `role`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  /// [userIds] AWS SSO user IDs to be assigned the role given in `role`.
  /// [workspaceId] Workspace ID.
  const RoleAssociationArgs({
    this.groupIds,
    this.region,
    required this.role,
    this.userIds,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'region': ?region,
      'role': role,
      'userIds': ?userIds,
      'workspaceId': workspaceId,
    };
  }

  factory RoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssociationArgs(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      userIds: (() { final guardedValue = map['userIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
