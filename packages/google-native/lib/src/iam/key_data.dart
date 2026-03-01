// ignore_for_file: unused_element, unnecessary_cast

import 'key_data_key_spec.dart';

/// Represents a public key data along with its format.
class KeyData {
  /// The specifications for the key.
  final KeyDataKeySpec keySpec;

  /// Creates a new [KeyData].
  /// [keySpec] The specifications for the key.
  KeyData({required this.keySpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keySpec': keySpec.value};
  }

  factory KeyData.fromMap(Map<String, dynamic> map) {
    return KeyData(keySpec: KeyDataKeySpec.fromValue(map['keySpec'] as String));
  }
}
