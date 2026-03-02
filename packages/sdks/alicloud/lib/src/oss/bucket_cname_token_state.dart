// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketCnameToken resources.
class BucketCnameTokenState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// The custom domain
  final pulumi.Input<String>? domain;
  /// Token used to verify domain ownership
  final pulumi.Input<String>? token;

  /// Creates a new [BucketCnameTokenState].
  /// [bucket] The name of the bucket
  /// [domain] The custom domain
  /// [token] Token used to verify domain ownership
  BucketCnameTokenState({
    this.bucket,
    this.domain,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'token': ?token,
    };
  }

  factory BucketCnameTokenState.fromMap(Map<String, dynamic> map) {
    return BucketCnameTokenState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
    );
  }
}

