// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BackendEnvironment.
class BackendEnvironmentArgs {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String> appId;

  /// Name of deployment artifacts.
  final pulumi.Input<String>? deploymentArtifacts;

  /// Name for the backend environment.
  final pulumi.Input<String> environmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS CloudFormation stack name of a backend environment.
  final pulumi.Input<String>? stackName;

  BackendEnvironmentArgs({
    required this.appId,
    this.deploymentArtifacts,
    required this.environmentName,
    this.region,
    this.stackName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final deploymentArtifactsValue = deploymentArtifacts;
    if (deploymentArtifactsValue != null) {
      map['deploymentArtifacts'] = deploymentArtifactsValue;
    }
    map['environmentName'] = environmentName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stackNameValue = stackName;
    if (stackNameValue != null) {
      map['stackName'] = stackNameValue;
    }
    return map;
  }

  factory BackendEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return BackendEnvironmentArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      deploymentArtifacts:
          pulumi.Input.asOptionalInput<String>(map['deploymentArtifacts']),
      environmentName: pulumi.Input.asInput<String>(map['environmentName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      stackName: pulumi.Input.asOptionalInput<String>(map['stackName']),
    );
  }
}
