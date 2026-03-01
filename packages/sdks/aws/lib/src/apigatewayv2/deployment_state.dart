// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// Whether the deployment was automatically released.
  final pulumi.Input<bool>? autoDeployed;
  /// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [DeploymentState].
  /// [apiId] API identifier.
  /// [autoDeployed] Whether the deployment was automatically released.
  /// [description] Description for the deployment resource. Must be less than or equal to 1024 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  DeploymentState({
    pulumi.Output<String>? apiId,
    pulumi.Output<bool>? autoDeployed,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      autoDeployed = pulumi.Input.asOptionalInput<bool>(autoDeployed),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'autoDeployed': ?autoDeployed,
      'description': ?description,
      'region': ?region,
      'triggers': ?triggers,
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      autoDeployed: map['autoDeployed'] == null ? null : pulumi.Output.create<bool>(map['autoDeployed'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

