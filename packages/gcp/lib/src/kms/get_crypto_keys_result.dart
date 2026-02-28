// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_keys_key.dart';

/// Result data returned by getCryptoKeys.
class GetCryptoKeysResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyRing;
  /// A list of all the retrieved keys from the provided key ring. This list is influenced by the provided filter argument.
  final List<GetCryptoKeysKey> keys;

  /// Creates a new [GetCryptoKeysResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyRing] Required.
  /// [keys] A list of all the retrieved keys from the provided key ring. This list is influenced by the provided filter argument.
  GetCryptoKeysResult({
    this.filter,
    required this.id,
    required this.keyRing,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'keyRing': keyRing,
      'keys': pulumi.Input.encodeList<GetCryptoKeysKey, Map<String, dynamic>>(keys, (value) => value.toMap()),
    };
  }

  factory GetCryptoKeysResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      keyRing: map['keyRing'] as String,
      keys: pulumi.Input.decodeList<GetCryptoKeysKey>(map['keys'], (value) => GetCryptoKeysKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

