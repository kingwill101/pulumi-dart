// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrustStoreRevocation.
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

  TrustStoreRevocationArgs({
    this.region,
    required this.revocationsS3Bucket,
    required this.revocationsS3Key,
    this.revocationsS3ObjectVersion,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['revocationsS3Bucket'] = revocationsS3Bucket;
    map['revocationsS3Key'] = revocationsS3Key;
    final revocationsS3ObjectVersionValue = revocationsS3ObjectVersion;
    if (revocationsS3ObjectVersionValue != null) {
      map['revocationsS3ObjectVersion'] = revocationsS3ObjectVersionValue;
    }
    map['trustStoreArn'] = trustStoreArn;
    return map;
  }

  factory TrustStoreRevocationArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreRevocationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      revocationsS3Bucket:
          pulumi.Input.asInput<String>(map['revocationsS3Bucket']),
      revocationsS3Key: pulumi.Input.asInput<String>(map['revocationsS3Key']),
      revocationsS3ObjectVersion: pulumi.Input.asOptionalInput<String>(
          map['revocationsS3ObjectVersion']),
      trustStoreArn: pulumi.Input.asInput<String>(map['trustStoreArn']),
    );
  }
}
