// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RoleAssociation.
class RoleAssociationArgs {
  /// The AWS SSO group ids to be assigned the role given in `role`.
  final Input<List<String>>? groupIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  final Input<String> role;

  /// The AWS SSO user ids to be assigned the role given in `role`.
  final Input<List<String>>? userIds;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  final Input<String> workspaceId;

  RoleAssociationArgs({
    this.groupIds,
    this.region,
    required this.role,
    this.userIds,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupIdsValue = groupIds;
    if (groupIdsValue != null) {
      map['groupIds'] = groupIdsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    final userIdsValue = userIds;
    if (userIdsValue != null) {
      map['userIds'] = userIdsValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory RoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssociationArgs(
      groupIds: Input.asOptionalInput<List<String>>(map['groupIds']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
      userIds: Input.asOptionalInput<List<String>>(map['userIds']),
      workspaceId: Input.asInput<String>(map['workspaceId']),
    );
  }
}
