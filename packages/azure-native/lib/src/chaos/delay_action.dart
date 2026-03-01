// ignore_for_file: unused_element, unnecessary_cast


/// Model that represents a delay action.
class DelayAction {
  /// ISO8601 formatted string that represents a duration.
  final String duration;
  /// String that represents a Capability URN.
  final String name;
  /// Enum that discriminates between action models.
  /// Expected value is 'delay'.
  final String type;

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
      duration: map['duration'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

