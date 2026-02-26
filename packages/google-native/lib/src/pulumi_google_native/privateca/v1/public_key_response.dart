// ignore_for_file: unused_element, unnecessary_cast

/// A PublicKey describes a public key.
class PublicKeyResponse {
  /// The format of the public key.
  final String format;

  /// A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.
  final String key;

  PublicKeyResponse({
    required this.format,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['key'] = key;
    return map;
  }

  factory PublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return PublicKeyResponse(
      format: map['format'] as String,
      key: map['key'] as String,
    );
  }
}
