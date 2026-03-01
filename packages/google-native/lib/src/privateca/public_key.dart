// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_format.dart';

/// A PublicKey describes a public key.
class PublicKey {
  /// The format of the public key.
  final PublicKeyFormat format;

  /// A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  final String key;

  /// Creates a new [PublicKey].
  /// [format] The format of the public key.
  /// [key] A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  PublicKey({required this.format, required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'format': format.value, 'key': key};
  }

  factory PublicKey.fromMap(Map<String, dynamic> map) {
    return PublicKey(
      format: PublicKeyFormat.fromValue(map['format'] as String),
      key: map['key'] as String,
    );
  }
}
