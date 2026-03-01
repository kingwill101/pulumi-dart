// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_versions_public_key.dart';
import 'get_crypto_key_versions_version.dart';

/// Result data returned by getCryptoKeyVersions.
class GetCryptoKeyVersionsResult {
  final String cryptoKey;
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetCryptoKeyVersionsPublicKey> publicKeys;

  /// A list of all the retrieved crypto key versions from the provided crypto key. This list is influenced by the provided filter argument.
  final List<GetCryptoKeyVersionsVersion> versions;

  /// Creates a new [GetCryptoKeyVersionsResult].
  /// [cryptoKey] Required.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [publicKeys] Required.
  /// [versions] A list of all the retrieved crypto key versions from the provided crypto key. This list is influenced by the provided filter argument.
  GetCryptoKeyVersionsResult({
    required this.cryptoKey,
    this.filter,
    required this.id,
    required this.publicKeys,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'filter': ?filter,
      'id': id,
      'publicKeys':
          pulumi.Input.encodeList<
            GetCryptoKeyVersionsPublicKey,
            Map<String, dynamic>
          >(publicKeys, (value) => value.toMap()),
      'versions':
          pulumi.Input.encodeList<
            GetCryptoKeyVersionsVersion,
            Map<String, dynamic>
          >(versions, (value) => value.toMap()),
    };
  }

  factory GetCryptoKeyVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsResult(
      cryptoKey: map['cryptoKey'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      publicKeys: pulumi.Input.decodeList<GetCryptoKeyVersionsPublicKey>(
        map['publicKeys'],
        (value) => GetCryptoKeyVersionsPublicKey.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      versions: pulumi.Input.decodeList<GetCryptoKeyVersionsVersion>(
        map['versions'],
        (value) => GetCryptoKeyVersionsVersion.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
