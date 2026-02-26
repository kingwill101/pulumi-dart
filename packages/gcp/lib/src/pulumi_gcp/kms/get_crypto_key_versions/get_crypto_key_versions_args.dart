// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCryptoKeyVersions.
class GetCryptoKeyVersionsArgs {
  /// The <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> field of the
  /// <span pulumi-lang-nodejs="`gcp.kms.CryptoKey`" pulumi-lang-dotnet="`gcp.kms.CryptoKey`" pulumi-lang-go="`kms.CryptoKey`" pulumi-lang-python="`kms.CryptoKey`" pulumi-lang-yaml="`gcp.kms.CryptoKey`" pulumi-lang-java="`gcp.kms.CryptoKey`">`gcp.kms.CryptoKey`</span> resource/datasource.
  final Input<String> cryptoKey;

  /// The filter argument is used to add a filter query parameter that limits which versions are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on name. Note: names take the form projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}/cryptoKeyVersions.
  ///
  /// * `"name:my-key-"` will retrieve cryptoKeyVersions that contain "my-key-" anywhere in their name.
  /// * `"name=projects/my-project/locations/global/keyRings/my-key-ring/cryptoKeys/my-key-1/cryptoKeyVersions/my-version-1"` will only retrieve a key with that exact name.
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final Input<String>? filter;

  GetCryptoKeyVersionsArgs({
    required this.cryptoKey,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory GetCryptoKeyVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsArgs(
      cryptoKey: Input.asInput<String>(map['cryptoKey']),
      filter: Input.asOptionalInput<String>(map['filter']),
    );
  }
}
