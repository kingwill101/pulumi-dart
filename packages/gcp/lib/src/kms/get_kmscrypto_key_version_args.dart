// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmscrypto_key_version_get_kmscrypto_key_version_args_doc}
/// Arguments for getKMSCryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmscrypto_key_version_get_kmscrypto_key_version_args_doc}
class GetKMSCryptoKeyVersionArgs {
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final pulumi.Input<String> cryptoKey;

  /// The version number for this CryptoKeyVersion. Defaults to `1`.
  final pulumi.Input<int>? version;

  /// Creates a new [GetKMSCryptoKeyVersionArgs].
  /// [cryptoKey] The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// [version] The version number for this CryptoKeyVersion. Defaults to `1`.
  GetKMSCryptoKeyVersionArgs({
    required String cryptoKey,
    int? version,
  })  : cryptoKey = pulumi.Input.asInput<String>(cryptoKey),
        version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetKMSCryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyVersionArgs(
      cryptoKey: map['cryptoKey'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
