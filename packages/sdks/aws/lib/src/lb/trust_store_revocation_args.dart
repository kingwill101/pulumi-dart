// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_trust_store_revocation_trust_store_revocation_args_doc}
/// The set of arguments for TrustStoreRevocation.
/// {@endtemplate}
/// {@macro pulumi_lb_trust_store_revocation_trust_store_revocation_args_doc}
class TrustStoreRevocationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// S3 Bucket name holding the client certificate CA bundle.
  final pulumi.Input<String> revocationsS3Bucket;
  /// S3 object key holding the client certificate CA bundle.
  final pulumi.Input<String> revocationsS3Key;
  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  final pulumi.Input<String>? revocationsS3ObjectVersion;
  /// Trust Store ARN.
  final pulumi.Input<String> trustStoreArn;

  /// Creates a new [TrustStoreRevocationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revocationsS3Bucket] S3 Bucket name holding the client certificate CA bundle.
  /// [revocationsS3Key] S3 object key holding the client certificate CA bundle.
  /// [revocationsS3ObjectVersion] Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  /// [trustStoreArn] Trust Store ARN.
  TrustStoreRevocationArgs({
    this.region,
    required this.revocationsS3Bucket,
    required this.revocationsS3Key,
    this.revocationsS3ObjectVersion,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'revocationsS3Bucket': revocationsS3Bucket,
      'revocationsS3Key': revocationsS3Key,
      'revocationsS3ObjectVersion': ?revocationsS3ObjectVersion,
      'trustStoreArn': trustStoreArn,
    };
  }

  factory TrustStoreRevocationArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreRevocationArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      revocationsS3Bucket: (map['revocationsS3Bucket'] as String).input(),
      revocationsS3Key: (map['revocationsS3Key'] as String).input(),
      revocationsS3ObjectVersion: map['revocationsS3ObjectVersion'] == null ? null : ((map['revocationsS3ObjectVersion'] as String).input()).input(),
      trustStoreArn: (map['trustStoreArn'] as String).input(),
    );
  }
}

