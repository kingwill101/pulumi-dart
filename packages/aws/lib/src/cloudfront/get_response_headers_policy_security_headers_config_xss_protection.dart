// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicySecurityHeadersConfigXssProtection {
  /// Whether CloudFront includes the mode=block directive in the X-XSS-Protection header.
  final bool modeBlock;

  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0.
  final bool protection;

  /// Whether CloudFront sets a reporting URI in the X-XSS-Protection header.
  final String reportUri;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigXssProtection].
  /// [modeBlock] Whether CloudFront includes the mode=block directive in the X-XSS-Protection header.
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  /// [protection] Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0.
  /// [reportUri] Whether CloudFront sets a reporting URI in the X-XSS-Protection header.
  GetResponseHeadersPolicySecurityHeadersConfigXssProtection({
    required this.modeBlock,
    required this.override,
    required this.protection,
    required this.reportUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modeBlock'] = modeBlock;
    map['override'] = override;
    map['protection'] = protection;
    map['reportUri'] = reportUri;
    return map;
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfigXssProtection(
      modeBlock: map['modeBlock'] as bool,
      override: map['override'] as bool,
      protection: map['protection'] as bool,
      reportUri: map['reportUri'] as String,
    );
  }
}
