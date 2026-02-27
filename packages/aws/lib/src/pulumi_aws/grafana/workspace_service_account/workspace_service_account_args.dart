// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for WorkspaceServiceAccount.
class WorkspaceServiceAccountArgs {
  /// The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  final pulumi.Input<String> grafanaRole;

  /// A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Grafana workspace with which the service account is associated.
  final pulumi.Input<String> workspaceId;

  WorkspaceServiceAccountArgs({
    required this.grafanaRole,
    this.name,
    this.region,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grafanaRole'] = grafanaRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory WorkspaceServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceServiceAccountArgs(
      grafanaRole: pulumi.Input.asInput<String>(map['grafanaRole']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workspaceId: pulumi.Input.asInput<String>(map['workspaceId']),
    );
  }
}
