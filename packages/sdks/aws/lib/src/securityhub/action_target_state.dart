// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActionTarget resources.
class ActionTargetState {
  /// Amazon Resource Name (ARN) of the Security Hub custom action target.
  final pulumi.Input<String>? arn;
  /// The name of the custom action target.
  final pulumi.Input<String>? description;
  /// The ID for the custom action target.
  final pulumi.Input<String>? identifier;
  /// The description for the custom action target.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ActionTargetState].
  /// [arn] Amazon Resource Name (ARN) of the Security Hub custom action target.
  /// [description] The name of the custom action target.
  /// [identifier] The ID for the custom action target.
  /// [name] The description for the custom action target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ActionTargetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'identifier': ?identifier,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ActionTargetState.fromMap(Map<String, dynamic> map) {
    return ActionTargetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

