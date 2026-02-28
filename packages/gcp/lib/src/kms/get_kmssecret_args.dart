// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmssecret_get_kmssecret_args_doc}
/// Arguments for getKMSSecret.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmssecret_get_kmssecret_args_doc}
class GetKMSSecretArgs {
  /// The [additional authenticated data](https://cloud.google.com/kms/docs/additional-authenticated-data) used for integrity checks during encryption and decryption.
  final pulumi.Input<String>? additionalAuthenticatedData;

  /// The ciphertext to be decrypted, encoded in base64
  final pulumi.Input<String> ciphertext;

  /// The id of the CryptoKey that will be used to
  /// decrypt the provided ciphertext. This is represented by the format
  /// `{projectId}/{location}/{keyRingName}/{cryptoKeyName}`.
  final pulumi.Input<String> cryptoKey;

  /// Creates a new [GetKMSSecretArgs].
  /// [additionalAuthenticatedData] The [additional authenticated data](https://cloud.google.com/kms/docs/additional-authenticated-data) used for integrity checks during encryption and decryption.
  /// [ciphertext] The ciphertext to be decrypted, encoded in base64
  /// [cryptoKey] The id of the CryptoKey that will be used to
  GetKMSSecretArgs({
    String? additionalAuthenticatedData,
    required String ciphertext,
    required String cryptoKey,
  })  : additionalAuthenticatedData =
            pulumi.Input.asOptionalInput<String>(additionalAuthenticatedData),
        ciphertext = pulumi.Input.asInput<String>(ciphertext),
        cryptoKey = pulumi.Input.asInput<String>(cryptoKey);

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
      additionalAuthenticatedData: map['additionalAuthenticatedData'] == null
          ? null
          : map['additionalAuthenticatedData'] as String,
      ciphertext: map['ciphertext'] as String,
      cryptoKey: map['cryptoKey'] as String,
    );
  }
}
