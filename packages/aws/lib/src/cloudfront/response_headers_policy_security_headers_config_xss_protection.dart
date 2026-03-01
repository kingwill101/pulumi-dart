// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicySecurityHeadersConfigXssProtection {
  /// Whether CloudFront includes the `mode=block` directive in the `X-XSS-Protection` header.
  final bool? modeBlock;

  /// Whether CloudFront overrides the `X-XSS-Protection` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// A Boolean value that determines the value of the `X-XSS-Protection` HTTP response header. When this setting is `true`, the value of the `X-XSS-Protection` header is `1`. When this setting is `false`, the value of the `X-XSS-Protection` header is `0`.
  final bool protection;

  /// A reporting URI, which CloudFront uses as the value of the report directive in the `X-XSS-Protection` header. You cannot specify a `report_uri` when `mode_block` is `true`.
  final String? reportUri;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigXssProtection].
  /// [modeBlock] Whether CloudFront includes the `mode=block` directive in the `X-XSS-Protection` header.
  /// [override] Whether CloudFront overrides the `X-XSS-Protection` HTTP response header received from the origin with the one specified in this response headers policy.
  /// [protection] A Boolean value that determines the value of the `X-XSS-Protection` HTTP response header. When this setting is `true`, the value of the `X-XSS-Protection` header is `1`. When this setting is `false`, the value of the `X-XSS-Protection` header is `0`.
  /// [reportUri] A reporting URI, which CloudFront uses as the value of the report directive in the `X-XSS-Protection` header. You cannot specify a `report_uri` when `mode_block` is `true`.
  ResponseHeadersPolicySecurityHeadersConfigXssProtection({
    this.modeBlock,
    required this.override,
    required this.protection,
    this.reportUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modeBlock': ?modeBlock,
      'override': override,
      'protection': protection,
      'reportUri': ?reportUri,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResponseHeadersPolicySecurityHeadersConfigXssProtection(
      modeBlock: map['modeBlock'] == null ? null : map['modeBlock'] as bool,
      override: map['override'] as bool,
      protection: map['protection'] as bool,
      reportUri: map['reportUri'] == null ? null : map['reportUri'] as String,
    );
  }
}
