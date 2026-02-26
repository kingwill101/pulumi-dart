// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy {
  /// Whether CloudFront overrides the `Referrer-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// The value of the `Referrer-Policy` HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | <span pulumi-lang-nodejs="`origin`" pulumi-lang-dotnet="`Origin`" pulumi-lang-go="`origin`" pulumi-lang-python="`origin`" pulumi-lang-yaml="`origin`" pulumi-lang-java="`origin`">`origin`</span> | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final String referrerPolicy;

  ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy({
    required this.override,
    required this.referrerPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['override'] = override;
    map['referrerPolicy'] = referrerPolicy;
    return map;
  }

  factory ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy(
      override: map['override'] as bool,
      referrerPolicy: map['referrerPolicy'] as String,
    );
  }
}
