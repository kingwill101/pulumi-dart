// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKMSCryptoKeyVersion.
class GetKMSCryptoKeyVersionArgs {
  /// The <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> field of the
  /// <span pulumi-lang-nodejs="`gcp.kms.CryptoKey`" pulumi-lang-dotnet="`gcp.kms.CryptoKey`" pulumi-lang-go="`kms.CryptoKey`" pulumi-lang-python="`kms.CryptoKey`" pulumi-lang-yaml="`gcp.kms.CryptoKey`" pulumi-lang-java="`gcp.kms.CryptoKey`">`gcp.kms.CryptoKey`</span> resource/datasource.
  final Input<String> cryptoKey;

  /// The version number for this CryptoKeyVersion. Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
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
