// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_crypto_keys_key/get_crypto_keys_key.dart';

/// Result data returned by getCryptoKeys.
class GetCryptoKeysResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyRing;

  /// A list of all the retrieved keys from the provided key ring. This list is influenced by the provided filter argument.
  final List<GetCryptoKeysKey> keys;

  GetCryptoKeysResult({
    this.filter,
    required this.id,
    required this.keyRing,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['keyRing'] = keyRing;
    map['keys'] = Input.encodeList<GetCryptoKeysKey, Map<String, dynamic>>(
        keys, (value) => value.toMap());
    return map;
  }

  factory GetCryptoKeysResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      keyRing: map['keyRing'] as String,
      keys: Input.decodeList<GetCryptoKeysKey>(
          map['keys'],
          (value) =>
              GetCryptoKeysKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
