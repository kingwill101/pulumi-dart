// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Deployment.
class DeploymentApigatewayv2Args {
  /// API identifier.
  final pulumi.Input<String> apiId;

  /// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  final pulumi.Input<Map<String, String>>? triggers;

  DeploymentApigatewayv2Args({
    required this.apiId,
    this.description,
    this.region,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory DeploymentApigatewayv2Args.fromMap(Map<String, dynamic> map) {
    return DeploymentApigatewayv2Args(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
