// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pair_filter.dart';

/// Result data returned by getKeyPair.
class GetKeyPairResult {
  /// ARN of the Key Pair.
  final String arn;

  /// Timestamp for when the key pair was created in ISO 8601 format.
  final String createTime;
  final List<GetKeyPairFilter>? filters;

  /// SHA-1 digest of the DER encoded private key.
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includePublicKey;
  final String? keyName;
  final String? keyPairId;

  /// Type of key pair.
  final String keyType;

  /// Public key material.
  final String publicKey;
  final String region;

  /// Any tags assigned to the Key Pair.
  final Map<String, String> tags;

  /// Creates a new [GetKeyPairResult].
  /// [arn] ARN of the Key Pair.
  /// [createTime] Timestamp for when the key pair was created in ISO 8601 format.
  /// [filters] Optional.
  /// [fingerprint] SHA-1 digest of the DER encoded private key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePublicKey] Optional.
  /// [keyName] Optional.
  /// [keyPairId] Optional.
  /// [keyType] Type of key pair.
  /// [publicKey] Public key material.
  /// [region] Required.
  /// [tags] Any tags assigned to the Key Pair.
  GetKeyPairResult({
    required this.arn,
    required this.createTime,
    this.filters,
    required this.fingerprint,
    required this.id,
    this.includePublicKey,
    this.keyName,
    this.keyPairId,
    required this.keyType,
    required this.publicKey,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createTime'] = createTime;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetKeyPairFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    final includePublicKeyValue = includePublicKey;
    if (includePublicKeyValue != null) {
      map['includePublicKey'] = includePublicKeyValue;
    }
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final keyPairIdValue = keyPairId;
    if (keyPairIdValue != null) {
      map['keyPairId'] = keyPairIdValue;
    }
    map['keyType'] = keyType;
    map['publicKey'] = publicKey;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetKeyPairResult.fromMap(Map<String, dynamic> map) {
    return GetKeyPairResult(
      arn: map['arn'] as String,
      createTime: map['createTime'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetKeyPairFilter>(
              map['filters'],
              (value) => GetKeyPairFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      includePublicKey: map['includePublicKey'] == null
          ? null
          : map['includePublicKey'] as bool,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyPairId: map['keyPairId'] == null ? null : map['keyPairId'] as String,
      keyType: map['keyType'] as String,
      publicKey: map['publicKey'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
