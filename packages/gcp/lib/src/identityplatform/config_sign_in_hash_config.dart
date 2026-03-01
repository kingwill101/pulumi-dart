// ignore_for_file: unused_element, unnecessary_cast


class ConfigSignInHashConfig {
  /// Different password hash algorithms used in Identity Toolkit.
  final String? algorithm;
  /// Memory cost for hash calculation. Used by scrypt and other similar password derivation algorithms. See https://tools.ietf.org/html/rfc7914 for explanation of field.
  final int? memoryCost;
  /// How many rounds for hash calculation. Used by scrypt and other similar password derivation algorithms.
  final int? rounds;
  /// Non-printable character to be inserted between the salt and plain text password in base64.
  final String? saltSeparator;
  /// Signer key in base64.
  final String? signerKey;

  /// Creates a new [ConfigSignInHashConfig].
  /// [algorithm] Different password hash algorithms used in Identity Toolkit.
  /// [memoryCost] Memory cost for hash calculation. Used by scrypt and other similar password derivation algorithms. See https://tools.ietf.org/html/rfc7914 for explanation of field.
  /// [rounds] How many rounds for hash calculation. Used by scrypt and other similar password derivation algorithms.
  /// [saltSeparator] Non-printable character to be inserted between the salt and plain text password in base64.
  /// [signerKey] Signer key in base64.
  ConfigSignInHashConfig({
    this.algorithm,
    this.memoryCost,
    this.rounds,
    this.saltSeparator,
    this.signerKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'memoryCost': ?memoryCost,
      'rounds': ?rounds,
      'saltSeparator': ?saltSeparator,
      'signerKey': ?signerKey,
    };
  }

  factory ConfigSignInHashConfig.fromMap(Map<String, dynamic> map) {
    return ConfigSignInHashConfig(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      memoryCost: map['memoryCost'] == null ? null : map['memoryCost'] as int,
      rounds: map['rounds'] == null ? null : map['rounds'] as int,
      saltSeparator: map['saltSeparator'] == null ? null : map['saltSeparator'] as String,
      signerKey: map['signerKey'] == null ? null : map['signerKey'] as String,
    );
  }
}

