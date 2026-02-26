// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy {
  /// The policy directives and their values that CloudFront includes as values for the `Content-Security-Policy` HTTP response header.
  final String contentSecurityPolicy;

  /// Whether CloudFront overrides the `Content-Security-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy({
    required this.contentSecurityPolicy,
    required this.override,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentSecurityPolicy'] = contentSecurityPolicy;
    map['override'] = override;
    return map;
  }

  factory ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy(
      contentSecurityPolicy: map['contentSecurityPolicy'] as String,
      override: map['override'] as bool,
    );
  }
}
