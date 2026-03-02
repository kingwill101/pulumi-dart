// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyKeyAttributeKeyModesOfUse {
  /// Whether an AWS Payment Cryptography key can be used to decrypt data.
  final pulumi.Input<bool>? decrypt;
  /// Whether an AWS Payment Cryptography key can be used to derive new keys.
  final pulumi.Input<bool>? deriveKey;
  /// Whether an AWS Payment Cryptography key can be used to encrypt data.
  final pulumi.Input<bool>? encrypt;
  /// Whether an AWS Payment Cryptography key can be used to generate and verify other card and PIN verification keys.
  final pulumi.Input<bool>? generate;
  /// Whether an AWS Payment Cryptography key has no special restrictions other than the restrictions implied by KeyUsage.
  final pulumi.Input<bool>? noRestrictions;
  /// Whether an AWS Payment Cryptography key can be used for signing.
  final pulumi.Input<bool>? sign;
  /// Whether an AWS Payment Cryptography key can be used to unwrap other keys.
  final pulumi.Input<bool>? unwrap;
  /// Whether an AWS Payment Cryptography key can be used to verify signatures.
  final pulumi.Input<bool>? verify;
  /// Whether an AWS Payment Cryptography key can be used to wrap other keys.
  final pulumi.Input<bool>? wrap;

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
    return <String, dynamic>{
      'decrypt': ?decrypt,
      'deriveKey': ?deriveKey,
      'encrypt': ?encrypt,
      'generate': ?generate,
      'noRestrictions': ?noRestrictions,
      'sign': ?sign,
      'unwrap': ?unwrap,
      'verify': ?verify,
      'wrap': ?wrap,
    };
  }

  factory KeyKeyAttributeKeyModesOfUse.fromMap(Map<String, dynamic> map) {
    return KeyKeyAttributeKeyModesOfUse(
      decrypt: map['decrypt'] == null ? null : ((map['decrypt'] as bool).input()).input(),
      deriveKey: map['deriveKey'] == null ? null : ((map['deriveKey'] as bool).input()).input(),
      encrypt: map['encrypt'] == null ? null : ((map['encrypt'] as bool).input()).input(),
      generate: map['generate'] == null ? null : ((map['generate'] as bool).input()).input(),
      noRestrictions: map['noRestrictions'] == null ? null : ((map['noRestrictions'] as bool).input()).input(),
      sign: map['sign'] == null ? null : ((map['sign'] as bool).input()).input(),
      unwrap: map['unwrap'] == null ? null : ((map['unwrap'] as bool).input()).input(),
      verify: map['verify'] == null ? null : ((map['verify'] as bool).input()).input(),
      wrap: map['wrap'] == null ? null : ((map['wrap'] as bool).input()).input(),
    );
  }
}

