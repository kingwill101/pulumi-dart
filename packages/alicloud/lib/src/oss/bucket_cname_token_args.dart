// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_cname_token_bucket_cname_token_args_doc}
/// The set of arguments for BucketCnameToken.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_cname_token_bucket_cname_token_args_doc}
class BucketCnameTokenArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// The custom domain
  final pulumi.Input<String> domain;

  /// Creates a new [BucketCnameTokenArgs].
  /// [bucket] The name of the bucket
  /// [domain] The custom domain
  BucketCnameTokenArgs({
    required String bucket,
    required String domain,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      domain = pulumi.Input.asInput<String>(domain);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'domain': domain,
    };
  }

  factory BucketCnameTokenArgs.fromMap(Map<String, dynamic> map) {
    return BucketCnameTokenArgs(
      bucket: map['bucket'] as String,
      domain: map['domain'] as String,
    );
  }
}

