// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_trust_store_trust_store_args_doc}
/// The set of arguments for TrustStore.
/// {@endtemplate}
/// {@macro pulumi_lb_trust_store_trust_store_args_doc}
class TrustStoreArgs {
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

  /// Creates a new [TrustStoreArgs].
  /// [caCertificatesBundleS3Bucket] S3 Bucket name holding the client certificate CA bundle.
  /// [caCertificatesBundleS3Key] S3 object key holding the client certificate CA bundle.
  /// [caCertificatesBundleS3ObjectVersion] Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  /// [name] Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TrustStoreArgs({
    required String caCertificatesBundleS3Bucket,
    required String caCertificatesBundleS3Key,
    String? caCertificatesBundleS3ObjectVersion,
    String? name,
    String? namePrefix,
    String? region,
    Map<String, String>? tags,
  }) :
      caCertificatesBundleS3Bucket = pulumi.Input.asInput<String>(caCertificatesBundleS3Bucket),
      caCertificatesBundleS3Key = pulumi.Input.asInput<String>(caCertificatesBundleS3Key),
      caCertificatesBundleS3ObjectVersion = pulumi.Input.asOptionalInput<String>(caCertificatesBundleS3ObjectVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificatesBundleS3Bucket': caCertificatesBundleS3Bucket,
      'caCertificatesBundleS3Key': caCertificatesBundleS3Key,
      'caCertificatesBundleS3ObjectVersion': ?caCertificatesBundleS3ObjectVersion,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory TrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs(
      caCertificatesBundleS3Bucket: map['caCertificatesBundleS3Bucket'] as String,
      caCertificatesBundleS3Key: map['caCertificatesBundleS3Key'] as String,
      caCertificatesBundleS3ObjectVersion: map['caCertificatesBundleS3ObjectVersion'] == null ? null : map['caCertificatesBundleS3ObjectVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

