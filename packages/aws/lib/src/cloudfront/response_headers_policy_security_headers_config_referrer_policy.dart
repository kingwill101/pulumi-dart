// ignore_for_file: unused_element, unnecessary_cast


class ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy {
  /// Whether CloudFront overrides the `Referrer-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;
  /// The value of the `Referrer-Policy` HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final String referrerPolicy;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy].
  /// [override] Whether CloudFront overrides the `Referrer-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  /// [referrerPolicy] The value of the `Referrer-Policy` HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy({
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
      override: map['override'] as bool,
      referrerPolicy: map['referrerPolicy'] as String,
    );
  }
}

