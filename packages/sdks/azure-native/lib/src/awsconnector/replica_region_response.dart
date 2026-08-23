// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReplicaRegion
class ReplicaRegionResponse {
  /// The ARN, key ID, or alias of the KMS key to encrypt the secret. If you don't include this field, Secrets Manager uses ``aws/secretsmanager``.
  final pulumi.Input<String>? kmsKeyId;
  /// A string that represents a ``Region``, for example 'us-east-1'.
  final pulumi.Input<String>? region;

  /// Creates a new [ReplicaRegionResponse].
  /// [kmsKeyId] The ARN, key ID, or alias of the KMS key to encrypt the secret. If you don't include this field, Secrets Manager uses ``aws/secretsmanager``.
  /// [region] A string that represents a ``Region``, for example 'us-east-1'.
  const ReplicaRegionResponse({
    this.kmsKeyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
    };
  }

  factory ReplicaRegionResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaRegionResponse(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
