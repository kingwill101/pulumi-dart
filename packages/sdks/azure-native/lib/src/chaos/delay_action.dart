// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents a delay action.
class DelayAction {
  /// ISO8601 formatted string that represents a duration.
  final pulumi.Input<String> duration;
  /// String that represents a Capability URN.
  final pulumi.Input<String> name;
  /// Enum that discriminates between action models.
  /// Expected value is 'delay'.
  final pulumi.Input<String> type;

  /// Creates a new [DelayAction].
  /// [duration] ISO8601 formatted string that represents a duration.
  /// [name] String that represents a Capability URN.
  /// [type] Enum that discriminates between action models.
  DelayAction({
    required this.duration,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'name': name,
      'type': type,
    };
  }

  factory DelayAction.fromMap(Map<String, dynamic> map) {
    return DelayAction(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

