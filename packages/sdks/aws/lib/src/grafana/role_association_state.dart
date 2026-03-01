// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleAssociation resources.
class RoleAssociationState {
  /// The AWS SSO group ids to be assigned the role given in `role`.
  final pulumi.Input<List<String>>? groupIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  final pulumi.Input<String>? role;
  /// The AWS SSO user ids to be assigned the role given in `role`.
  final pulumi.Input<List<String>>? userIds;
  /// The workspace id.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [RoleAssociationState].
  /// [groupIds] The AWS SSO group ids to be assigned the role given in `role`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  /// [userIds] The AWS SSO user ids to be assigned the role given in `role`.
  /// [workspaceId] The workspace id.
  RoleAssociationState({
    pulumi.Output<List<String>>? groupIds,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
    pulumi.Output<List<String>>? userIds,
    pulumi.Output<String>? workspaceId,
  }) :
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role),
      userIds = pulumi.Input.asOptionalInput<List<String>>(userIds),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'region': ?region,
      'role': ?role,
      'userIds': ?userIds,
      'workspaceId': ?workspaceId,
    };
  }

  factory RoleAssociationState.fromMap(Map<String, dynamic> map) {
    return RoleAssociationState(
      groupIds: map['groupIds'] == null ? null : pulumi.Output.create<List<String>>((map['groupIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      userIds: map['userIds'] == null ? null : pulumi.Output.create<List<String>>((map['userIds'] as List).cast<String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

