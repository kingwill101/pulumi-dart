// ignore_for_file: unused_element, unnecessary_cast


class KeyvaluestoreKeysExclusiveResourceKeyValuePair {
  /// Key to put.
  final String key;
  /// Value to put.
  final String value;

  /// Creates a new [KeyvaluestoreKeysExclusiveResourceKeyValuePair].
  /// [key] Key to put.
  /// [value] Value to put.
  KeyvaluestoreKeysExclusiveResourceKeyValuePair({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KeyvaluestoreKeysExclusiveResourceKeyValuePair.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeysExclusiveResourceKeyValuePair(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

