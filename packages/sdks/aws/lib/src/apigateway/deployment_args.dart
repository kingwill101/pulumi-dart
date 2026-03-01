// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_apigateway_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Description of the deployment.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// REST API identifier.
  final pulumi.Input<String> restApi;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  final pulumi.Input<Map<String, String>>? triggers;
  /// Map to set on the related stage.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [DeploymentArgs].
  /// [description] Description of the deployment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] REST API identifier.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  /// [variables] Map to set on the related stage.
  DeploymentArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApi,
    pulumi.Output<Map<String, String>>? triggers,
    pulumi.Output<Map<String, String>>? variables,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asInput<String>(restApi),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
      variables = pulumi.Input.asOptionalInput<Map<String, String>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'region': ?region,
      'restApi': restApi,
      'triggers': ?triggers,
      'variables': ?variables,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: pulumi.Output.create<String>(map['restApi'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
      variables: map['variables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['variables'] as Map).cast<String, String>()),
    );
  }
}

