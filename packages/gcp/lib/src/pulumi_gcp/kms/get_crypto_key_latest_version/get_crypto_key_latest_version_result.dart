// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_crypto_key_latest_version_public_key/get_crypto_key_latest_version_public_key.dart';

/// Result data returned by getCryptoKeyLatestVersion.
class GetCryptoKeyLatestVersionResult {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;
  final String cryptoKey;
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. See the [protection_level reference](https://cloud.google.com/kms/docs/reference/rest/v1/ProtectionLevel) for possible outputs.
  final String protectionLevel;

  /// If the enclosing CryptoKey has purpose `ASYMMETRIC_SIGN` or `ASYMMETRIC_DECRYPT`, this block contains details about the public key associated to this CryptoKeyVersion. Structure is documented below.
  final List<GetCryptoKeyLatestVersionPublicKey> publicKeys;

  /// The current state of the latest CryptoKeyVersion. See the [state reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions#CryptoKeyVersion.CryptoKeyVersionState) for possible outputs.
  final String state;
  final int version;

  GetCryptoKeyLatestVersionResult({
    required this.algorithm,
    required this.cryptoKey,
    this.filter,
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
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['name'] = name;
    map['protectionLevel'] = protectionLevel;
    map['publicKeys'] = Input.encodeList<GetCryptoKeyLatestVersionPublicKey,
        Map<String, dynamic>>(publicKeys, (value) => value.toMap());
    map['state'] = state;
    map['version'] = version;
    return map;
  }

  factory GetCryptoKeyLatestVersionResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyLatestVersionResult(
      algorithm: map['algorithm'] as String,
      cryptoKey: map['cryptoKey'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      publicKeys: Input.decodeList<GetCryptoKeyLatestVersionPublicKey>(
          map['publicKeys'],
          (value) => GetCryptoKeyLatestVersionPublicKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      version: map['version'] as int,
    );
  }
}
