// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_action_target_action_target_args_doc}
/// The set of arguments for ActionTarget.
/// {@endtemplate}
/// {@macro pulumi_securityhub_action_target_action_target_args_doc}
class ActionTargetArgs {
  /// The name of the custom action target.
  final pulumi.Input<String> description;

  /// The ID for the custom action target.
  final pulumi.Input<String> identifier;

  /// The description for the custom action target.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ActionTargetArgs].
  /// [description] The name of the custom action target.
  /// [identifier] The ID for the custom action target.
  /// [name] The description for the custom action target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ActionTargetArgs({
    required this.description,
    required this.identifier,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'identifier': identifier,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ActionTargetArgs.fromMap(Map<String, dynamic> map) {
    return ActionTargetArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
