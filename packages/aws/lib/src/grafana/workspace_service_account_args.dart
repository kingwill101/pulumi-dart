// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_workspace_service_account_workspace_service_account_args_doc}
/// The set of arguments for WorkspaceServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_grafana_workspace_service_account_workspace_service_account_args_doc}
class WorkspaceServiceAccountArgs {
  /// The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  final pulumi.Input<String> grafanaRole;
  /// A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Grafana workspace with which the service account is associated.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceServiceAccountArgs].
  /// [grafanaRole] The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  /// [name] A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workspaceId] The Grafana workspace with which the service account is associated.
  WorkspaceServiceAccountArgs({
    required String grafanaRole,
    String? name,
    String? region,
    required String workspaceId,
  }) :
      grafanaRole = pulumi.Input.asInput<String>(grafanaRole),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grafanaRole': grafanaRole,
      'name': ?name,
      'region': ?region,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceServiceAccountArgs(
      grafanaRole: map['grafanaRole'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

