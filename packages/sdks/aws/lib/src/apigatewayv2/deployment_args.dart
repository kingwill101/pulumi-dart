// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_deployment_deployment_args_doc}
class DeploymentArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;
  /// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [DeploymentArgs].
  /// [apiId] API identifier.
  /// [description] Description for the deployment resource. Must be less than or equal to 1024 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  DeploymentArgs({
    required this.apiId,
    this.description,
    this.region,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'region': ?region,
      'triggers': ?triggers,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      apiId: (map['apiId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      triggers: map['triggers'] == null ? null : ((map['triggers'] as Map).cast<String, String>()).input(),
    );
  }
}

