// ignore_for_file: unused_element, unnecessary_cast


/// Transparent Data Encryption properties.
class TransparentDataEncryption {
  /// Enable key auto rotation
  final bool? enableAutoRotation;
  /// Customer Managed Key (CMK) Uri.
  final String? keyUri;
  /// Additional Keys
  final List<String>? keys;

  /// Creates a new [TransparentDataEncryption].
  /// [enableAutoRotation] Enable key auto rotation
  /// [keyUri] Customer Managed Key (CMK) Uri.
  /// [keys] Additional Keys
  TransparentDataEncryption({
    this.enableAutoRotation,
    this.keyUri,
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutoRotation': ?enableAutoRotation,
      'keyUri': ?keyUri,
      'keys': ?keys,
    };
  }

  factory TransparentDataEncryption.fromMap(Map<String, dynamic> map) {
    return TransparentDataEncryption(
      enableAutoRotation: map['enableAutoRotation'] == null ? null : map['enableAutoRotation'] as bool,
      keyUri: map['keyUri'] == null ? null : map['keyUri'] as String,
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
    );
  }
}

