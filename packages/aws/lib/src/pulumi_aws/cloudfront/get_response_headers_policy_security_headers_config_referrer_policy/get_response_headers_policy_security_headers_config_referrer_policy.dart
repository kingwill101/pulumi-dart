// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy {
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// Value of the Referrer-Policy HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final String referrerPolicy;

  GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy({
    required this.override,
    required this.referrerPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['override'] = override;
    map['referrerPolicy'] = referrerPolicy;
    return map;
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy(
      override: map['override'] as bool,
      referrerPolicy: map['referrerPolicy'] as String,
    );
  }
}
