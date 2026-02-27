// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ActionTarget.
class ActionTargetArgs {
  /// The name of the custom action target.
  final pulumi.Input<String> description;

  /// The ID for the custom action target.
  final pulumi.Input<String> identifier;

  /// The description for the custom action target.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ActionTargetArgs({
    required this.description,
    required this.identifier,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['identifier'] = identifier;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ActionTargetArgs.fromMap(Map<String, dynamic> map) {
    return ActionTargetArgs(
      description: pulumi.Input.asInput<String>(map['description']),
      identifier: pulumi.Input.asInput<String>(map['identifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
