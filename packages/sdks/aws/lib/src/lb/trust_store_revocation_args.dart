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
    pulumi.Output<String>? region,
    required pulumi.Output<String> revocationsS3Bucket,
    required pulumi.Output<String> revocationsS3Key,
    pulumi.Output<String>? revocationsS3ObjectVersion,
    required pulumi.Output<String> trustStoreArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      revocationsS3Bucket = pulumi.Input.asInput<String>(revocationsS3Bucket),
      revocationsS3Key = pulumi.Input.asInput<String>(revocationsS3Key),
      revocationsS3ObjectVersion = pulumi.Input.asOptionalInput<String>(revocationsS3ObjectVersion),
      trustStoreArn = pulumi.Input.asInput<String>(trustStoreArn);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revocationsS3Bucket: pulumi.Output.create<String>(map['revocationsS3Bucket'] as String),
      revocationsS3Key: pulumi.Output.create<String>(map['revocationsS3Key'] as String),
      revocationsS3ObjectVersion: map['revocationsS3ObjectVersion'] == null ? null : pulumi.Output.create<String>(map['revocationsS3ObjectVersion'] as String),
      trustStoreArn: pulumi.Output.create<String>(map['trustStoreArn'] as String),
    );
  }
}

