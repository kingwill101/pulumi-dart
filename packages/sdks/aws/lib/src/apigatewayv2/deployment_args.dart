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
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

