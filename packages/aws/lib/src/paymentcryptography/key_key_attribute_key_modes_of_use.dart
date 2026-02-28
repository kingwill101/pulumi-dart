// ignore_for_file: unused_element, unnecessary_cast

class KeyKeyAttributeKeyModesOfUse {
  /// Whether an AWS Payment Cryptography key can be used to decrypt data.
  final bool? decrypt;

  /// Whether an AWS Payment Cryptography key can be used to derive new keys.
  final bool? deriveKey;

  /// Whether an AWS Payment Cryptography key can be used to encrypt data.
  final bool? encrypt;

  /// Whether an AWS Payment Cryptography key can be used to generate and verify other card and PIN verification keys.
  final bool? generate;

  /// Whether an AWS Payment Cryptography key has no special restrictions other than the restrictions implied by KeyUsage.
  final bool? noRestrictions;

  /// Whether an AWS Payment Cryptography key can be used for signing.
  final bool? sign;

  /// Whether an AWS Payment Cryptography key can be used to unwrap other keys.
  final bool? unwrap;

  /// Whether an AWS Payment Cryptography key can be used to verify signatures.
  final bool? verify;

  /// Whether an AWS Payment Cryptography key can be used to wrap other keys.
  final bool? wrap;

  /// Creates a new [KeyKeyAttributeKeyModesOfUse].
  /// [decrypt] Whether an AWS Payment Cryptography key can be used to decrypt data.
  /// [deriveKey] Whether an AWS Payment Cryptography key can be used to derive new keys.
  /// [encrypt] Whether an AWS Payment Cryptography key can be used to encrypt data.
  /// [generate] Whether an AWS Payment Cryptography key can be used to generate and verify other card and PIN verification keys.
  /// [noRestrictions] Whether an AWS Payment Cryptography key has no special restrictions other than the restrictions implied by KeyUsage.
  /// [sign] Whether an AWS Payment Cryptography key can be used for signing.
  /// [unwrap] Whether an AWS Payment Cryptography key can be used to unwrap other keys.
  /// [verify] Whether an AWS Payment Cryptography key can be used to verify signatures.
  /// [wrap] Whether an AWS Payment Cryptography key can be used to wrap other keys.
  KeyKeyAttributeKeyModesOfUse({
    this.decrypt,
    this.deriveKey,
    this.encrypt,
    this.generate,
    this.noRestrictions,
    this.sign,
    this.unwrap,
    this.verify,
    this.wrap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final decryptValue = decrypt;
    if (decryptValue != null) {
      map['decrypt'] = decryptValue;
    }
    final deriveKeyValue = deriveKey;
    if (deriveKeyValue != null) {
      map['deriveKey'] = deriveKeyValue;
    }
    final encryptValue = encrypt;
    if (encryptValue != null) {
      map['encrypt'] = encryptValue;
    }
    final generateValue = generate;
    if (generateValue != null) {
      map['generate'] = generateValue;
    }
    final noRestrictionsValue = noRestrictions;
    if (noRestrictionsValue != null) {
      map['noRestrictions'] = noRestrictionsValue;
    }
    final signValue = sign;
    if (signValue != null) {
      map['sign'] = signValue;
    }
    final unwrapValue = unwrap;
    if (unwrapValue != null) {
      map['unwrap'] = unwrapValue;
    }
    final verifyValue = verify;
    if (verifyValue != null) {
      map['verify'] = verifyValue;
    }
    final wrapValue = wrap;
    if (wrapValue != null) {
      map['wrap'] = wrapValue;
    }
    return map;
  }

  factory KeyKeyAttributeKeyModesOfUse.fromMap(Map<String, dynamic> map) {
    return KeyKeyAttributeKeyModesOfUse(
      decrypt: map['decrypt'] == null ? null : map['decrypt'] as bool,
      deriveKey: map['deriveKey'] == null ? null : map['deriveKey'] as bool,
      encrypt: map['encrypt'] == null ? null : map['encrypt'] as bool,
      generate: map['generate'] == null ? null : map['generate'] as bool,
      noRestrictions:
          map['noRestrictions'] == null ? null : map['noRestrictions'] as bool,
      sign: map['sign'] == null ? null : map['sign'] as bool,
      unwrap: map['unwrap'] == null ? null : map['unwrap'] as bool,
      verify: map['verify'] == null ? null : map['verify'] as bool,
      wrap: map['wrap'] == null ? null : map['wrap'] as bool,
    );
  }
}
