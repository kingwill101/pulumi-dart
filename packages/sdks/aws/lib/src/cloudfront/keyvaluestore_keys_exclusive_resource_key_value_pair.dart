// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyvaluestoreKeysExclusiveResourceKeyValuePair {
  /// Key to put.
  final pulumi.Input<String> key;
  /// Value to put.
  final pulumi.Input<String> value;

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
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

