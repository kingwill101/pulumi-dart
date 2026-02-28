// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gameservices_v1beta_get_game_server_deployment_iam_policy_gameservices_v1beta_args_doc}
/// Arguments for getGameServerDeploymentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gameservices_v1beta_get_game_server_deployment_iam_policy_gameservices_v1beta_args_doc}
class GetGameServerDeploymentIamPolicyGameservicesV1betaArgs {
  final pulumi.Input<String> gameServerDeploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGameServerDeploymentIamPolicyGameservicesV1betaArgs].
  /// [gameServerDeploymentId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetGameServerDeploymentIamPolicyGameservicesV1betaArgs({
    required String gameServerDeploymentId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : gameServerDeploymentId =
            pulumi.Input.asInput<String>(gameServerDeploymentId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gameServerDeploymentId'] = gameServerDeploymentId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGameServerDeploymentIamPolicyGameservicesV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetGameServerDeploymentIamPolicyGameservicesV1betaArgs(
      gameServerDeploymentId: map['gameServerDeploymentId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
