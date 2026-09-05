// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pair_filter.dart';

/// Result data returned by getKeyPair.
class GetKeyPairResult {
  /// ARN of the Key Pair.
  final String? arn;
  /// Timestamp for when the key pair was created in ISO 8601 format.
  final String? createTime;
  final List<GetKeyPairFilter>? filters;
  /// SHA-1 digest of the DER encoded private key.
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includePublicKey;
  final String? keyName;
  final String? keyPairId;
  /// Type of key pair.
  final String? keyType;
  /// Public key material.
  final String? publicKey;
  final String? region;
  /// Any tags assigned to the Key Pair.
  final Map<String, String>? tags;

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
  /// [region] Optional.
  /// [tags] Any tags assigned to the Key Pair.
  const GetKeyPairResult({
    this.arn,
    this.createTime,
    this.filters,
    this.fingerprint,
    this.id,
    this.includePublicKey,
    this.keyName,
    this.keyPairId,
    this.keyType,
    this.publicKey,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createTime': ?createTime,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyPairFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fingerprint': ?fingerprint,
      'id': ?id,
      'includePublicKey': ?includePublicKey,
      'keyName': ?keyName,
      'keyPairId': ?keyPairId,
      'keyType': ?keyType,
      'publicKey': ?publicKey,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetKeyPairResult.fromMap(Map<String, dynamic> map) {
    return GetKeyPairResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyPairFilter>(guardedValue, (value) => GetKeyPairFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includePublicKey: (() { final guardedValue = map['includePublicKey']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyPairId: (() { final guardedValue = map['keyPairId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
