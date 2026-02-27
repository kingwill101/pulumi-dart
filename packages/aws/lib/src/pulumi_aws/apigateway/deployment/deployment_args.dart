// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Deployment.
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

  DeploymentArgs({
    this.description,
    this.region,
    required this.restApi,
    this.triggers,
    this.variables,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
      variables:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['variables']),
    );
  }
}
