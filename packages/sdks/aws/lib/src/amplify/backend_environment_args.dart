// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amplify_backend_environment_backend_environment_args_doc}
/// The set of arguments for BackendEnvironment.
/// {@endtemplate}
/// {@macro pulumi_amplify_backend_environment_backend_environment_args_doc}
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

  /// Creates a new [BackendEnvironmentArgs].
  /// [appId] Unique ID for an Amplify app.
  /// [deploymentArtifacts] Name of deployment artifacts.
  /// [environmentName] Name for the backend environment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stackName] AWS CloudFormation stack name of a backend environment.
  BackendEnvironmentArgs({
    required this.appId,
    this.deploymentArtifacts,
    required this.environmentName,
    this.region,
    this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'deploymentArtifacts': ?deploymentArtifacts,
      'environmentName': environmentName,
      'region': ?region,
      'stackName': ?stackName,
    };
  }

  factory BackendEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return BackendEnvironmentArgs(
      appId: (map['appId'] as String).input(),
      deploymentArtifacts: map['deploymentArtifacts'] == null ? null : ((map['deploymentArtifacts'] as String).input()).input(),
      environmentName: (map['environmentName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      stackName: map['stackName'] == null ? null : ((map['stackName'] as String).input()).input(),
    );
  }
}

