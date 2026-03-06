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
  const GetKeyPairResult({
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
    return <String, dynamic>{
      'arn': arn,
      'createTime': createTime,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyPairFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fingerprint': fingerprint,
      'id': id,
      'includePublicKey': ?includePublicKey,
      'keyName': ?keyName,
      'keyPairId': ?keyPairId,
      'keyType': keyType,
      'publicKey': publicKey,
      'region': region,
      'tags': tags,
    };
  }

  factory GetKeyPairResult.fromMap(Map<String, dynamic> map) {
    return GetKeyPairResult(
      arn: map['arn'] as String,
      createTime: map['createTime'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyPairFilter>(guardedValue, (value) => GetKeyPairFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      includePublicKey: (() { final guardedValue = map['includePublicKey']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyPairId: (() { final guardedValue = map['keyPairId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyType: map['keyType'] as String,
      publicKey: map['publicKey'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

