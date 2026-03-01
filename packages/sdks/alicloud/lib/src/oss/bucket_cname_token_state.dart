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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? token,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      token = pulumi.Input.asOptionalInput<String>(token);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'token': ?token,
    };
  }

  factory BucketCnameTokenState.fromMap(Map<String, dynamic> map) {
    return BucketCnameTokenState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
    );
  }
}

