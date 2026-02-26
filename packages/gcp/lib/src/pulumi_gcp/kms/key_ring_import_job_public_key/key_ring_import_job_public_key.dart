// ignore_for_file: unused_element, unnecessary_cast

class KeyRingImportJobPublicKey {
  /// (Output)
  /// The public key, encoded in PEM format. For more information, see the RFC 7468 sections
  /// for General Considerations and Textual Encoding of Subject Public Key Info.
  final String? pem;

  KeyRingImportJobPublicKey({
    this.pem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pemValue = pem;
    if (pemValue != null) {
      map['pem'] = pemValue;
    }
    return map;
  }

  factory KeyRingImportJobPublicKey.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobPublicKey(
      pem: map['pem'] == null ? null : map['pem'] as String,
    );
  }
}
