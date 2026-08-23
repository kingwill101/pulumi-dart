// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy {
  /// Whether CloudFront overrides the `Referrer-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;
  /// The value of the `Referrer-Policy` HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final pulumi.Input<String> referrerPolicy;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy].
  /// [override] Whether CloudFront overrides the `Referrer-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  /// [referrerPolicy] The value of the `Referrer-Policy` HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  const ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy({
    required this.override,
    required this.referrerPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'override': override,
      'referrerPolicy': referrerPolicy,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy(
      override: pulumi.Input.fromValue(map['override'] as bool),
      referrerPolicy: pulumi.Input.fromValue(map['referrerPolicy'] as String),
    );
  }
}
