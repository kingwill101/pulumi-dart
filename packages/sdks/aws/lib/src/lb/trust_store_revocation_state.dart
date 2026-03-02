// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrustStoreRevocation resources.
class TrustStoreRevocationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS assigned RevocationId, (number).
  final pulumi.Input<int>? revocationId;
  /// S3 Bucket name holding the client certificate CA bundle.
  final pulumi.Input<String>? revocationsS3Bucket;
  /// S3 object key holding the client certificate CA bundle.
  final pulumi.Input<String>? revocationsS3Key;
  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  final pulumi.Input<String>? revocationsS3ObjectVersion;
  /// Trust Store ARN.
  final pulumi.Input<String>? trustStoreArn;

  /// Creates a new [TrustStoreRevocationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revocationId] AWS assigned RevocationId, (number).
  /// [revocationsS3Bucket] S3 Bucket name holding the client certificate CA bundle.
  /// [revocationsS3Key] S3 object key holding the client certificate CA bundle.
  /// [revocationsS3ObjectVersion] Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  /// [trustStoreArn] Trust Store ARN.
  TrustStoreRevocationState({
    this.region,
    this.revocationId,
    this.revocationsS3Bucket,
    this.revocationsS3Key,
    this.revocationsS3ObjectVersion,
    this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'revocationId': ?revocationId,
      'revocationsS3Bucket': ?revocationsS3Bucket,
      'revocationsS3Key': ?revocationsS3Key,
      'revocationsS3ObjectVersion': ?revocationsS3ObjectVersion,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory TrustStoreRevocationState.fromMap(Map<String, dynamic> map) {
    return TrustStoreRevocationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      revocationId: map['revocationId'] == null ? null : ((map['revocationId'] as int).input()).input(),
      revocationsS3Bucket: map['revocationsS3Bucket'] == null ? null : ((map['revocationsS3Bucket'] as String).input()).input(),
      revocationsS3Key: map['revocationsS3Key'] == null ? null : ((map['revocationsS3Key'] as String).input()).input(),
      revocationsS3ObjectVersion: map['revocationsS3ObjectVersion'] == null ? null : ((map['revocationsS3ObjectVersion'] as String).input()).input(),
      trustStoreArn: map['trustStoreArn'] == null ? null : ((map['trustStoreArn'] as String).input()).input(),
    );
  }
}

