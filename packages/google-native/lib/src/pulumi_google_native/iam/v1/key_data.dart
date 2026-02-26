// ignore_for_file: unused_element, unnecessary_cast

import 'key_data_key_spec.dart';

/// Represents a public key data along with its format.
class KeyData {
  /// The specifications for the key.
  final KeyDataKeySpec keySpec;

  KeyData({
    required this.keySpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keySpec'] = keySpec.value;
    return map;
  }

  factory KeyData.fromMap(Map<String, dynamic> map) {
    return KeyData(
      keySpec: KeyDataKeySpec.fromValue(map['keySpec'] as String),
    );
  }
}
