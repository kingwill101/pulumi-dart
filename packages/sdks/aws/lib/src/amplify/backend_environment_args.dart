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
  const BackendEnvironmentArgs({
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
      appId: pulumi.Input.fromValue(map['appId'] as String),
      deploymentArtifacts: (() { final guardedValue = map['deploymentArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackName: (() { final guardedValue = map['stackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
