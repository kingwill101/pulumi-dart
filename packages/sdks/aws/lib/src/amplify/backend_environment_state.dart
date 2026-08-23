// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackendEnvironment resources.
class BackendEnvironmentState {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String>? appId;
  /// ARN for a backend environment that is part of an Amplify app.
  final pulumi.Input<String>? arn;
  /// Name of deployment artifacts.
  final pulumi.Input<String>? deploymentArtifacts;
  /// Name for the backend environment.
  final pulumi.Input<String>? environmentName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS CloudFormation stack name of a backend environment.
  final pulumi.Input<String>? stackName;

  /// Creates a new [BackendEnvironmentState].
  /// [appId] Unique ID for an Amplify app.
  /// [arn] ARN for a backend environment that is part of an Amplify app.
  /// [deploymentArtifacts] Name of deployment artifacts.
  /// [environmentName] Name for the backend environment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stackName] AWS CloudFormation stack name of a backend environment.
  const BackendEnvironmentState({
    this.appId,
    this.arn,
    this.deploymentArtifacts,
    this.environmentName,
    this.region,
    this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'arn': ?arn,
      'deploymentArtifacts': ?deploymentArtifacts,
      'environmentName': ?environmentName,
      'region': ?region,
      'stackName': ?stackName,
    };
  }

  factory BackendEnvironmentState.fromMap(Map<String, dynamic> map) {
    return BackendEnvironmentState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentArtifacts: (() { final guardedValue = map['deploymentArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackName: (() { final guardedValue = map['stackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
