// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKMSSecret.
class GetKMSSecretArgs {
  /// The [additional authenticated data](https://cloud.google.com/kms/docs/additional-authenticated-data) used for integrity checks during encryption and decryption.
  final pulumi.Input<String>? additionalAuthenticatedData;

  /// The ciphertext to be decrypted, encoded in base64
  final pulumi.Input<String> ciphertext;

  /// The id of the CryptoKey that will be used to
  /// decrypt the provided ciphertext. This is represented by the format
  /// `{projectId}/{location}/{keyRingName}/{cryptoKeyName}`.
  final pulumi.Input<String> cryptoKey;

  GetKMSSecretArgs({
    this.additionalAuthenticatedData,
    required this.ciphertext,
    required this.cryptoKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalAuthenticatedDataValue = additionalAuthenticatedData;
    if (additionalAuthenticatedDataValue != null) {
      map['additionalAuthenticatedData'] = additionalAuthenticatedDataValue;
    }
    map['ciphertext'] = ciphertext;
    map['cryptoKey'] = cryptoKey;
    return map;
  }

  factory GetKMSSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretArgs(
      additionalAuthenticatedData: pulumi.Input.asOptionalInput<String>(
          map['additionalAuthenticatedData']),
      ciphertext: pulumi.Input.asInput<String>(map['ciphertext']),
      cryptoKey: pulumi.Input.asInput<String>(map['cryptoKey']),
    );
  }
}
