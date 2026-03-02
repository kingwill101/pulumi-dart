// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy {
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;
  /// Value of the Referrer-Policy HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final pulumi.Input<String> referrerPolicy;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy].
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  /// [referrerPolicy] Value of the Referrer-Policy HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy({
    required this.override,
    required this.referrerPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'override': override,
      'referrerPolicy': referrerPolicy,
    };
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy(
      override: (map['override'] as bool).input(),
      referrerPolicy: (map['referrerPolicy'] as String).input(),
    );
  }
}

