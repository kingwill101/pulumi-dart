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

  ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity({
    required this.accessControlMaxAgeSec,
    this.includeSubdomains,
    required this.override,
    this.preload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessControlMaxAgeSec'] = accessControlMaxAgeSec;
    final includeSubdomainsValue = includeSubdomains;
    if (includeSubdomainsValue != null) {
      map['includeSubdomains'] = includeSubdomainsValue;
    }
    map['override'] = override;
    final preloadValue = preload;
    if (preloadValue != null) {
      map['preload'] = preloadValue;
    }
    return map;
  }

  factory ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity(
      accessControlMaxAgeSec: map['accessControlMaxAgeSec'] as int,
      includeSubdomains: map['includeSubdomains'] == null
          ? null
          : map['includeSubdomains'] as bool,
      override: map['override'] as bool,
      preload: map['preload'] == null ? null : map['preload'] as bool,
    );
  }
}
