// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_workspace_service_account_token_workspace_service_account_token_args_doc}
/// The set of arguments for WorkspaceServiceAccountToken.
/// {@endtemplate}
/// {@macro pulumi_grafana_workspace_service_account_token_workspace_service_account_token_args_doc}
class WorkspaceServiceAccountTokenArgs {
  /// A name for the token to create. The name must be unique within the workspace.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  final pulumi.Input<int> secondsToLive;

  /// The ID of the service account for which to create a token.
  final pulumi.Input<String> serviceAccountId;

  /// The Grafana workspace with which the service account token is associated.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceServiceAccountTokenArgs].
  /// [name] A name for the token to create. The name must be unique within the workspace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondsToLive] Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  /// [serviceAccountId] The ID of the service account for which to create a token.
  /// [workspaceId] The Grafana workspace with which the service account token is associated.
  WorkspaceServiceAccountTokenArgs({
    String? name,
    String? region,
    required int secondsToLive,
    required String serviceAccountId,
    required String workspaceId,
  }) : name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       secondsToLive = pulumi.Input.asInput<int>(secondsToLive),
       serviceAccountId = pulumi.Input.asInput<String>(serviceAccountId),
       workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'secondsToLive': secondsToLive,
      'serviceAccountId': serviceAccountId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceServiceAccountTokenArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceServiceAccountTokenArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secondsToLive: map['secondsToLive'] as int,
      serviceAccountId: map['serviceAccountId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
