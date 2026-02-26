// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_crypto_key_versions_public_key/get_crypto_key_versions_public_key.dart';
import '../get_crypto_key_versions_version/get_crypto_key_versions_version.dart';

/// Result data returned by getCryptoKeyVersions.
class GetCryptoKeyVersionsResult {
  final String cryptoKey;
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetCryptoKeyVersionsPublicKey> publicKeys;

  /// A list of all the retrieved crypto key versions from the provided crypto key. This list is influenced by the provided filter argument.
  final List<GetCryptoKeyVersionsVersion> versions;

  GetCryptoKeyVersionsResult({
    required this.cryptoKey,
    this.filter,
    required this.id,
    required this.publicKeys,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['publicKeys'] =
        Input.encodeList<GetCryptoKeyVersionsPublicKey, Map<String, dynamic>>(
            publicKeys, (value) => value.toMap());
    map['versions'] =
        Input.encodeList<GetCryptoKeyVersionsVersion, Map<String, dynamic>>(
            versions, (value) => value.toMap());
    return map;
  }

  factory GetCryptoKeyVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsResult(
      cryptoKey: map['cryptoKey'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      publicKeys: Input.decodeList<GetCryptoKeyVersionsPublicKey>(
          map['publicKeys'],
          (value) => GetCryptoKeyVersionsPublicKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      versions: Input.decodeList<GetCryptoKeyVersionsVersion>(
          map['versions'],
          (value) => GetCryptoKeyVersionsVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
