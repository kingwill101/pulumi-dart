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
  BackendEnvironmentState({
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
      appId: map['appId'] == null ? null : ((map['appId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      deploymentArtifacts: map['deploymentArtifacts'] == null ? null : ((map['deploymentArtifacts'] as String).input()).input(),
      environmentName: map['environmentName'] == null ? null : ((map['environmentName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      stackName: map['stackName'] == null ? null : ((map['stackName'] as String).input()).input(),
    );
  }
}

