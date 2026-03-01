// ignore_for_file: unused_element, unnecessary_cast


class ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity {
  /// A number that CloudFront uses as the value for the `max-age` directive in the `Strict-Transport-Security` HTTP response header.
  final int accessControlMaxAgeSec;
  /// Whether CloudFront includes the `includeSubDomains` directive in the `Strict-Transport-Security` HTTP response header.
  final bool? includeSubdomains;
  /// Whether CloudFront overrides the `Strict-Transport-Security` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;
  /// Whether CloudFront includes the `preload` directive in the `Strict-Transport-Security` HTTP response header.
  final bool? preload;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity].
  /// [accessControlMaxAgeSec] A number that CloudFront uses as the value for the `max-age` directive in the `Strict-Transport-Security` HTTP response header.
  /// [includeSubdomains] Whether CloudFront includes the `includeSubDomains` directive in the `Strict-Transport-Security` HTTP response header.
  /// [override] Whether CloudFront overrides the `Strict-Transport-Security` HTTP response header received from the origin with the one specified in this response headers policy.
  /// [preload] Whether CloudFront includes the `preload` directive in the `Strict-Transport-Security` HTTP response header.
  ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity({
    required this.accessControlMaxAgeSec,
    this.includeSubdomains,
    required this.override,
    this.preload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlMaxAgeSec': accessControlMaxAgeSec,
      'includeSubdomains': ?includeSubdomains,
      'override': override,
      'preload': ?preload,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity(
      accessControlMaxAgeSec: map['accessControlMaxAgeSec'] as int,
      includeSubdomains: map['includeSubdomains'] == null ? null : map['includeSubdomains'] as bool,
      override: map['override'] as bool,
      preload: map['preload'] == null ? null : map['preload'] as bool,
    );
  }
}

