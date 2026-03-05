// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceServiceAccount resources.
class WorkspaceServiceAccountState {
  /// The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  final pulumi.Input<String>? grafanaRole;
  /// A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the service account in the given Grafana workspace
  final pulumi.Input<String>? serviceAccountId;
  /// The Grafana workspace with which the service account is associated.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceServiceAccountState].
  /// [grafanaRole] The permission level to use for this service account. For more information about the roles and the permissions each has, see the [User roles](https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html) documentation.
  /// [name] A name for the service account. The name must be unique within the workspace, as it determines the ID associated with the service account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceAccountId] Identifier of the service account in the given Grafana workspace
  /// [workspaceId] The Grafana workspace with which the service account is associated.
  WorkspaceServiceAccountState({
    this.grafanaRole,
    this.name,
    this.region,
    this.serviceAccountId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grafanaRole': ?grafanaRole,
      'name': ?name,
      'region': ?region,
      'serviceAccountId': ?serviceAccountId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceServiceAccountState.fromMap(Map<String, dynamic> map) {
    return WorkspaceServiceAccountState(
      grafanaRole: (() { final guardedValue = map['grafanaRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

