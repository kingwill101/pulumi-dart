// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_crypto_key_versions_version_public_key/get_crypto_key_versions_version_public_key.dart';

class GetCryptoKeyVersionsVersion {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;

  /// The <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> field of the
  /// <span pulumi-lang-nodejs="`gcp.kms.CryptoKey`" pulumi-lang-dotnet="`gcp.kms.CryptoKey`" pulumi-lang-go="`kms.CryptoKey`" pulumi-lang-python="`kms.CryptoKey`" pulumi-lang-yaml="`gcp.kms.CryptoKey`" pulumi-lang-java="`gcp.kms.CryptoKey`">`gcp.kms.CryptoKey`</span> resource/datasource.
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
