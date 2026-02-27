// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_crypto_key_versions_version_public_key/get_crypto_key_versions_version_public_key.dart';

class GetCryptoKeyVersionsVersion {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;

  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final String cryptoKey;
  final String id;
  final String name;
  final String protectionLevel;
  final List<GetCryptoKeyVersionsVersionPublicKey> publicKeys;
  final String state;
  final int version;

  GetCryptoKeyVersionsVersion({
    required this.algorithm,
    required this.cryptoKey,
    required this.id,
    required this.name,
    required this.protectionLevel,
    required this.publicKeys,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['cryptoKey'] = cryptoKey;
    map['id'] = id;
    map['name'] = name;
    map['protectionLevel'] = protectionLevel;
    map['publicKeys'] = Input.encodeList<GetCryptoKeyVersionsVersionPublicKey,
        Map<String, dynamic>>(publicKeys, (value) => value.toMap());
    map['state'] = state;
    map['version'] = version;
    return map;
  }

  factory GetCryptoKeyVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsVersion(
      algorithm: map['algorithm'] as String,
      cryptoKey: map['cryptoKey'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      publicKeys: Input.decodeList<GetCryptoKeyVersionsVersionPublicKey>(
          map['publicKeys'],
          (value) => GetCryptoKeyVersionsVersionPublicKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      version: map['version'] as int,
    );
  }
}
