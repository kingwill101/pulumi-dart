// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCryptoKeyLatestVersion.
class GetCryptoKeyLatestVersionArgs {
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final pulumi.Input<String> cryptoKey;

  /// The filter argument is used to add a filter query parameter that limits which type of cryptoKeyVersion is retrieved as the latest by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on state.
  ///
  /// * `"state:ENABLED"` will retrieve the latest cryptoKeyVersion that has the state "ENABLED".
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final pulumi.Input<String>? filter;

  GetCryptoKeyLatestVersionArgs({
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

  factory GetCryptoKeyLatestVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyLatestVersionArgs(
      cryptoKey: pulumi.Input.asInput<String>(map['cryptoKey']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
    );
  }
}
