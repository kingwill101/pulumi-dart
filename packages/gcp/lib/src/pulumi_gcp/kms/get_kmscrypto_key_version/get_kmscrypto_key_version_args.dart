// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKMSCryptoKeyVersion.
class GetKMSCryptoKeyVersionArgs {
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final Input<String> cryptoKey;

  /// The version number for this CryptoKeyVersion. Defaults to `1`.
  final Input<int>? version;

  GetKMSCryptoKeyVersionArgs({
    required this.cryptoKey,
    this.version,
  });

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
      cryptoKey: Input.asInput<String>(map['cryptoKey']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
