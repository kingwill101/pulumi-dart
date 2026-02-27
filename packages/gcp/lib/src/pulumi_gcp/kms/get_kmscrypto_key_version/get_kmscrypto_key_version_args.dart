// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKMSCryptoKeyVersion.
class GetKMSCryptoKeyVersionArgs {
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final pulumi.Input<String> cryptoKey;

  /// The version number for this CryptoKeyVersion. Defaults to `1`.
  final pulumi.Input<int>? version;

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
      cryptoKey: pulumi.Input.asInput<String>(map['cryptoKey']),
      version: pulumi.Input.asOptionalInput<int>(map['version']),
    );
  }
}
