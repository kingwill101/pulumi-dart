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
    String? description,
    String? region,
    required String restApi,
    Map<String, String>? triggers,
    Map<String, String>? variables,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        region = pulumi.Input.asOptionalInput<String>(region),
        restApi = pulumi.Input.asInput<String>(restApi),
        triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
        variables =
            pulumi.Input.asOptionalInput<Map<String, String>>(variables);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    final variablesValue = variables;
    if (variablesValue != null) {
      map['variables'] = variablesValue;
    }
    return map;
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApi: map['restApi'] as String,
      triggers: map['triggers'] == null
          ? null
          : (map['triggers'] as Map).cast<String, String>(),
      variables: map['variables'] == null
          ? null
          : (map['variables'] as Map).cast<String, String>(),
    );
  }
}
