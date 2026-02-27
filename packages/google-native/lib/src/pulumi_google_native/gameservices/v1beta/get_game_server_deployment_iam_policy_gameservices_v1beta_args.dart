// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGameServerDeploymentIamPolicy.
class GetGameServerDeploymentIamPolicyGameservicesV1betaArgs {
  final pulumi.Input<String> gameServerDeploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetGameServerDeploymentIamPolicyGameservicesV1betaArgs({
    required this.gameServerDeploymentId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      gameServerDeploymentId:
          pulumi.Input.asInput<String>(map['gameServerDeploymentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
