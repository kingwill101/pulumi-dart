// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TrustStore.
class TrustStoreArgs2 {
  /// S3 Bucket name holding the client certificate CA bundle.
  final Input<String> caCertificatesBundleS3Bucket;

  /// S3 object key holding the client certificate CA bundle.
  final Input<String> caCertificatesBundleS3Key;

  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  final Input<String>? caCertificatesBundleS3ObjectVersion;

  /// Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. Cannot be longer than 6 characters.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TrustStoreArgs2({
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

  factory TrustStoreArgs2.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs2(
      caCertificatesBundleS3Bucket:
          Input.asInput<String>(map['caCertificatesBundleS3Bucket']),
      caCertificatesBundleS3Key:
          Input.asInput<String>(map['caCertificatesBundleS3Key']),
      caCertificatesBundleS3ObjectVersion: Input.asOptionalInput<String>(
          map['caCertificatesBundleS3ObjectVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
