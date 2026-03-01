// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_role_association_role_association_args_doc}
/// The set of arguments for RoleAssociation.
/// {@endtemplate}
/// {@macro pulumi_grafana_role_association_role_association_args_doc}
class RoleAssociationArgs {
  /// The AWS SSO group ids to be assigned the role given in `role`.
  final pulumi.Input<List<String>>? groupIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  final pulumi.Input<String> role;
  /// The AWS SSO user ids to be assigned the role given in `role`.
  final pulumi.Input<List<String>>? userIds;
  /// The workspace id.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceId;

  /// Creates a new [RoleAssociationArgs].
  /// [groupIds] The AWS SSO group ids to be assigned the role given in `role`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  /// [userIds] The AWS SSO user ids to be assigned the role given in `role`.
  /// [workspaceId] The workspace id.
  RoleAssociationArgs({
    pulumi.Output<List<String>>? groupIds,
    pulumi.Output<String>? region,
    required pulumi.Output<String> role,
    pulumi.Output<List<String>>? userIds,
    required pulumi.Output<String> workspaceId,
  }) :
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asInput<String>(role),
      userIds = pulumi.Input.asOptionalInput<List<String>>(userIds),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      groupIds: map['groupIds'] == null ? null : pulumi.Output.create<List<String>>((map['groupIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      userIds: map['userIds'] == null ? null : pulumi.Output.create<List<String>>((map['userIds'] as List).cast<String>()),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

