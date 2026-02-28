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
    required String appId,
    String? deploymentArtifacts,
    required String environmentName,
    String? region,
    String? stackName,
  })  : appId = pulumi.Input.asInput<String>(appId),
        deploymentArtifacts =
            pulumi.Input.asOptionalInput<String>(deploymentArtifacts),
        environmentName = pulumi.Input.asInput<String>(environmentName),
        region = pulumi.Input.asOptionalInput<String>(region),
        stackName = pulumi.Input.asOptionalInput<String>(stackName);

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
      appId: map['appId'] as String,
      deploymentArtifacts: map['deploymentArtifacts'] == null
          ? null
          : map['deploymentArtifacts'] as String,
      environmentName: map['environmentName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      stackName: map['stackName'] == null ? null : map['stackName'] as String,
    );
  }
}
