// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters for the scaling action.
class ScaleActionResponse {
  /// the amount of time to wait since the last scaling action before this action occurs. It must be between 1 week and 1 minute in ISO 8601 format.
  final pulumi.Input<String> cooldown;
  /// the scale direction. Whether the scaling action increases or decreases the number of instances.
  final pulumi.Input<String> direction;
  /// the type of action that should occur when the scale rule fires.
  final pulumi.Input<String> type;
  /// the number of instances that are involved in the scaling action. This value must be 1 or greater. The default value is 1.
  final pulumi.Input<String>? value;

  /// Creates a new [ScaleActionResponse].
  /// [cooldown] the amount of time to wait since the last scaling action before this action occurs. It must be between 1 week and 1 minute in ISO 8601 format.
  /// [direction] the scale direction. Whether the scaling action increases or decreases the number of instances.
  /// [type] the type of action that should occur when the scale rule fires.
  /// [value] the number of instances that are involved in the scaling action. This value must be 1 or greater. The default value is 1.
  ScaleActionResponse({
    required this.cooldown,
    required this.direction,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldown': cooldown,
      'direction': direction,
      'type': type,
      'value': ?value,
    };
  }

  factory ScaleActionResponse.fromMap(Map<String, dynamic> map) {
    return ScaleActionResponse(
      cooldown: (map['cooldown'] as String).input(),
      direction: (map['direction'] as String).input(),
      type: (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

