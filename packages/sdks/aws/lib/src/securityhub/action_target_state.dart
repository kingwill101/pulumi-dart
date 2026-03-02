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
    this.arn,
    this.description,
    this.identifier,
    this.name,
    this.region,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      identifier: map['identifier'] == null ? null : (map['identifier'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

