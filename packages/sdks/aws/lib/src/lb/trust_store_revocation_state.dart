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
    pulumi.Output<String>? region,
    pulumi.Output<int>? revocationId,
    pulumi.Output<String>? revocationsS3Bucket,
    pulumi.Output<String>? revocationsS3Key,
    pulumi.Output<String>? revocationsS3ObjectVersion,
    pulumi.Output<String>? trustStoreArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      revocationId = pulumi.Input.asOptionalInput<int>(revocationId),
      revocationsS3Bucket = pulumi.Input.asOptionalInput<String>(revocationsS3Bucket),
      revocationsS3Key = pulumi.Input.asOptionalInput<String>(revocationsS3Key),
      revocationsS3ObjectVersion = pulumi.Input.asOptionalInput<String>(revocationsS3ObjectVersion),
      trustStoreArn = pulumi.Input.asOptionalInput<String>(trustStoreArn);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revocationId: map['revocationId'] == null ? null : pulumi.Output.create<int>(map['revocationId'] as int),
      revocationsS3Bucket: map['revocationsS3Bucket'] == null ? null : pulumi.Output.create<String>(map['revocationsS3Bucket'] as String),
      revocationsS3Key: map['revocationsS3Key'] == null ? null : pulumi.Output.create<String>(map['revocationsS3Key'] as String),
      revocationsS3ObjectVersion: map['revocationsS3ObjectVersion'] == null ? null : pulumi.Output.create<String>(map['revocationsS3ObjectVersion'] as String),
      trustStoreArn: map['trustStoreArn'] == null ? null : pulumi.Output.create<String>(map['trustStoreArn'] as String),
    );
  }
}

