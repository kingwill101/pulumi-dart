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
    pulumi.Output<String>? appId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? deploymentArtifacts,
    pulumi.Output<String>? environmentName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? stackName,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deploymentArtifacts = pulumi.Input.asOptionalInput<String>(deploymentArtifacts),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      region = pulumi.Input.asOptionalInput<String>(region),
      stackName = pulumi.Input.asOptionalInput<String>(stackName);

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
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deploymentArtifacts: map['deploymentArtifacts'] == null ? null : pulumi.Output.create<String>(map['deploymentArtifacts'] as String),
      environmentName: map['environmentName'] == null ? null : pulumi.Output.create<String>(map['environmentName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      stackName: map['stackName'] == null ? null : pulumi.Output.create<String>(map['stackName'] as String),
    );
  }
}

