// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKMSSecretCiphertext.
class GetKMSSecretCiphertextArgs {
  /// The id of the CryptoKey that will be used to
  /// encrypt the provided plaintext. This is represented by the format
  /// `{projectId}/{location}/{keyRingName}/{cryptoKeyName}`.
  final Input<String> cryptoKey;

  /// The plaintext to be encrypted
  final Input<String> plaintext;

  GetKMSSecretCiphertextArgs({
    required this.cryptoKey,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    map['plaintext'] = plaintext;
    return map;
  }

  factory GetKMSSecretCiphertextArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretCiphertextArgs(
      cryptoKey: Input.asInput<String>(map['cryptoKey']),
      plaintext: Input.asInput<String>(map['plaintext']),
    );
  }
}
