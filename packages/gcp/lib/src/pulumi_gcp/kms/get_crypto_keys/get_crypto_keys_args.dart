// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCryptoKeys.
class GetCryptoKeysArgs {
  /// The filter argument is used to add a filter query parameter that limits which keys are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on name. Note: names take the form projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}.
  ///
  /// * `"name:my-key-"` will retrieve keys that contain "my-key-" anywhere in their name.
  /// * `"name=projects/my-project/locations/global/keyRings/my-key-ring/cryptoKeys/my-key-1"` will only retrieve a key with that exact name.
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final pulumi.Input<String>? filter;

  /// The key ring that the keys belongs to. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.,
  final pulumi.Input<String> keyRing;

  GetCryptoKeysArgs({
    this.filter,
    required this.keyRing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['keyRing'] = keyRing;
    return map;
  }

  factory GetCryptoKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      keyRing: pulumi.Input.asInput<String>(map['keyRing']),
    );
  }
}
