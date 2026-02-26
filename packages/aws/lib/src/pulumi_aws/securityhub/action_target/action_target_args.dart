// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ActionTarget.
class ActionTargetArgs {
  /// The name of the custom action target.
  final Input<String> description;

  /// The ID for the custom action target.
  final Input<String> identifier;

  /// The description for the custom action target.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      description: Input.asInput<String>(map['description']),
      identifier: Input.asInput<String>(map['identifier']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
