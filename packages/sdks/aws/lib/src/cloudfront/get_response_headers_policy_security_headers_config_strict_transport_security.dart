// ignore_for_file: unused_element, unnecessary_cast


class GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity {
  /// A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header.
  final int accessControlMaxAgeSec;
  /// Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header.
  final bool includeSubdomains;
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;
  /// Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.
  final bool preload;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity].
  /// [accessControlMaxAgeSec] A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header.
  /// [includeSubdomains] Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header.
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  /// [preload] Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.
  GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity({
    required this.accessControlMaxAgeSec,
    required this.includeSubdomains,
    required this.override,
    required this.preload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlMaxAgeSec': accessControlMaxAgeSec,
      'includeSubdomains': includeSubdomains,
      'override': override,
      'preload': preload,
    };
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity(
      accessControlMaxAgeSec: map['accessControlMaxAgeSec'] as int,
      includeSubdomains: map['includeSubdomains'] as bool,
      override: map['override'] as bool,
      preload: map['preload'] as bool,
    );
  }
}

