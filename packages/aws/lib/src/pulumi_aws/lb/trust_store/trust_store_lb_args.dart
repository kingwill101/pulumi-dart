// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrustStore.
class TrustStoreLbArgs {
  /// S3 Bucket name holding the client certificate CA bundle.
  final pulumi.Input<String> caCertificatesBundleS3Bucket;

  /// S3 object key holding the client certificate CA bundle.
  final pulumi.Input<String> caCertificatesBundleS3Key;

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

  TrustStoreLbArgs({
    required this.caCertificatesBundleS3Bucket,
    required this.caCertificatesBundleS3Key,
    this.caCertificatesBundleS3ObjectVersion,
    this.name,
    this.namePrefix,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificatesBundleS3Bucket'] = caCertificatesBundleS3Bucket;
    map['caCertificatesBundleS3Key'] = caCertificatesBundleS3Key;
    final caCertificatesBundleS3ObjectVersionValue =
        caCertificatesBundleS3ObjectVersion;
    if (caCertificatesBundleS3ObjectVersionValue != null) {
      map['caCertificatesBundleS3ObjectVersion'] =
          caCertificatesBundleS3ObjectVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TrustStoreLbArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreLbArgs(
      caCertificatesBundleS3Bucket:
          pulumi.Input.asInput<String>(map['caCertificatesBundleS3Bucket']),
      caCertificatesBundleS3Key:
          pulumi.Input.asInput<String>(map['caCertificatesBundleS3Key']),
      caCertificatesBundleS3ObjectVersion: pulumi.Input.asOptionalInput<String>(
          map['caCertificatesBundleS3ObjectVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
