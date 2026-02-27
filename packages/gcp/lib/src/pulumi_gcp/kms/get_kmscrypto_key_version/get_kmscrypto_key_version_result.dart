// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_kmscrypto_key_version_public_key/get_kmscrypto_key_version_public_key.dart';

/// Result data returned by getKMSCryptoKeyVersion.
class GetKMSCryptoKeyVersionResult {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;
  final String cryptoKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`
  final String name;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. See the [protection_level reference](https://cloud.google.com/kms/docs/reference/rest/v1/ProtectionLevel) for possible outputs.
  final String protectionLevel;

  /// If the enclosing CryptoKey has purpose `ASYMMETRIC_SIGN` or `ASYMMETRIC_DECRYPT`, this block contains details about the public key associated to this CryptoKeyVersion. Structure is documented below.
  final List<GetKMSCryptoKeyVersionPublicKey> publicKeys;

  /// The current state of the CryptoKeyVersion. See the [state reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions#CryptoKeyVersion.CryptoKeyVersionState) for possible outputs.
  final String state;
  final int? version;

  GetKMSCryptoKeyVersionResult({
    required this.algorithm,
    required this.cryptoKey,
    required this.id,
    required this.name,
    required this.protectionLevel,
    required this.publicKeys,
    required this.state,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['cryptoKey'] = cryptoKey;
    map['id'] = id;
    map['name'] = name;
    map['protectionLevel'] = protectionLevel;
    map['publicKeys'] = pulumi.Input.encodeList<GetKMSCryptoKeyVersionPublicKey,
        Map<String, dynamic>>(publicKeys, (value) => value.toMap());
    map['state'] = state;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetKMSCryptoKeyVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyVersionResult(
      algorithm: map['algorithm'] as String,
      cryptoKey: map['cryptoKey'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      publicKeys: pulumi.Input.decodeList<GetKMSCryptoKeyVersionPublicKey>(
          map['publicKeys'],
          (value) => GetKMSCryptoKeyVersionPublicKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
