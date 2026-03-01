// ignore_for_file: unused_element, unnecessary_cast


/// A map to describe the settings of an action.
class KeyValuePair {
  /// The name of the setting for the action.
  final String key;
  /// The value of the setting for the action.
  final String value;

  /// Creates a new [KeyValuePair].
  /// [key] The name of the setting for the action.
  /// [value] The value of the setting for the action.
  KeyValuePair({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KeyValuePair.fromMap(Map<String, dynamic> map) {
    return KeyValuePair(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

