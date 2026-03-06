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
  const BucketCnameTokenState({
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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

