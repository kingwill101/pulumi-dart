// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecretCiphertext.
class SecretCiphertextArgs {
  /// The additional authenticated data used for integrity checks during encryption and decryption.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? additionalAuthenticatedData;

  /// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String> cryptoKey;

  /// The plaintext to be encrypted.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> plaintext;

  SecretCiphertextArgs({
    this.additionalAuthenticatedData,
    required this.cryptoKey,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalAuthenticatedDataValue = additionalAuthenticatedData;
    if (additionalAuthenticatedDataValue != null) {
      map['additionalAuthenticatedData'] = additionalAuthenticatedDataValue;
    }
    map['cryptoKey'] = cryptoKey;
    map['plaintext'] = plaintext;
    return map;
  }

  factory SecretCiphertextArgs.fromMap(Map<String, dynamic> map) {
    return SecretCiphertextArgs(
      additionalAuthenticatedData: pulumi.Input.asOptionalInput<String>(
          map['additionalAuthenticatedData']),
      cryptoKey: pulumi.Input.asInput<String>(map['cryptoKey']),
      plaintext: pulumi.Input.asInput<String>(map['plaintext']),
    );
  }
}
