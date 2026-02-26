// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKMSSecretAsymmetric.
class GetKMSSecretAsymmetricArgs {
  /// The ciphertext to be decrypted, encoded in base64
  final Input<String> ciphertext;

  /// The crc32 checksum of the <span pulumi-lang-nodejs="`ciphertext`" pulumi-lang-dotnet="`Ciphertext`" pulumi-lang-go="`ciphertext`" pulumi-lang-python="`ciphertext`" pulumi-lang-yaml="`ciphertext`" pulumi-lang-java="`ciphertext`">`ciphertext`</span> in hexadecimal notation. If not specified, it will be computed.
  final Input<String>? crc32;

  /// The id of the CryptoKey version that will be used to
  /// decrypt the provided ciphertext. This is represented by the format
  /// `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`.
  final Input<String> cryptoKeyVersion;

  GetKMSSecretAsymmetricArgs({
    required this.ciphertext,
    this.crc32,
    required this.cryptoKeyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ciphertext'] = ciphertext;
    final crc32Value = crc32;
    if (crc32Value != null) {
      map['crc32'] = crc32Value;
    }
    map['cryptoKeyVersion'] = cryptoKeyVersion;
    return map;
  }

  factory GetKMSSecretAsymmetricArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretAsymmetricArgs(
      ciphertext: Input.asInput<String>(map['ciphertext']),
      crc32: Input.asOptionalInput<String>(map['crc32']),
      cryptoKeyVersion: Input.asInput<String>(map['cryptoKeyVersion']),
    );
  }
}
