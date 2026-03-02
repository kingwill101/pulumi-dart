// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrustStore resources.
class TrustStoreState {
  /// ARN of the Trust Store (matches `id`).
  final pulumi.Input<String>? arn;
  /// ARN suffix for use with CloudWatch Metrics.
  final pulumi.Input<String>? arnSuffix;
  /// S3 Bucket name holding the client certificate CA bundle.
  final pulumi.Input<String>? caCertificatesBundleS3Bucket;
  /// S3 object key holding the client certificate CA bundle.
  final pulumi.Input<String>? caCertificatesBundleS3Key;
  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  final pulumi.Input<String>? caCertificatesBundleS3ObjectVersion;
  /// Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TrustStoreState].
  /// [arn] ARN of the Trust Store (matches `id`).
  /// [arnSuffix] ARN suffix for use with CloudWatch Metrics.
  /// [caCertificatesBundleS3Bucket] S3 Bucket name holding the client certificate CA bundle.
  /// [caCertificatesBundleS3Key] S3 object key holding the client certificate CA bundle.
  /// [caCertificatesBundleS3ObjectVersion] Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  /// [name] Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TrustStoreState({
    this.arn,
    this.arnSuffix,
    this.caCertificatesBundleS3Bucket,
    this.caCertificatesBundleS3Key,
    this.caCertificatesBundleS3ObjectVersion,
    this.name,
    this.namePrefix,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnSuffix': ?arnSuffix,
      'caCertificatesBundleS3Bucket': ?caCertificatesBundleS3Bucket,
      'caCertificatesBundleS3Key': ?caCertificatesBundleS3Key,
      'caCertificatesBundleS3ObjectVersion': ?caCertificatesBundleS3ObjectVersion,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TrustStoreState.fromMap(Map<String, dynamic> map) {
    return TrustStoreState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      arnSuffix: map['arnSuffix'] == null ? null : ((map['arnSuffix'] as String).input()).input(),
      caCertificatesBundleS3Bucket: map['caCertificatesBundleS3Bucket'] == null ? null : ((map['caCertificatesBundleS3Bucket'] as String).input()).input(),
      caCertificatesBundleS3Key: map['caCertificatesBundleS3Key'] == null ? null : ((map['caCertificatesBundleS3Key'] as String).input()).input(),
      caCertificatesBundleS3ObjectVersion: map['caCertificatesBundleS3ObjectVersion'] == null ? null : ((map['caCertificatesBundleS3ObjectVersion'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

