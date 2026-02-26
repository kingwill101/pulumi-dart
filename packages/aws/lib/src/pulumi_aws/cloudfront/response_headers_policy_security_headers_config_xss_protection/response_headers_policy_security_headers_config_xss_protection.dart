// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicySecurityHeadersConfigXssProtection {
  /// Whether CloudFront includes the `mode=block` directive in the `X-XSS-Protection` header.
  final bool? modeBlock;

  /// Whether CloudFront overrides the `X-XSS-Protection` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// A Boolean value that determines the value of the `X-XSS-Protection` HTTP response header. When this setting is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the value of the `X-XSS-Protection` header is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. When this setting is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the value of the `X-XSS-Protection` header is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final bool protection;

  /// A reporting URI, which CloudFront uses as the value of the report directive in the `X-XSS-Protection` header. You cannot specify a <span pulumi-lang-nodejs="`reportUri`" pulumi-lang-dotnet="`ReportUri`" pulumi-lang-go="`reportUri`" pulumi-lang-python="`report_uri`" pulumi-lang-yaml="`reportUri`" pulumi-lang-java="`reportUri`">`report_uri`</span> when <span pulumi-lang-nodejs="`modeBlock`" pulumi-lang-dotnet="`ModeBlock`" pulumi-lang-go="`modeBlock`" pulumi-lang-python="`mode_block`" pulumi-lang-yaml="`modeBlock`" pulumi-lang-java="`modeBlock`">`mode_block`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? reportUri;

  ResponseHeadersPolicySecurityHeadersConfigXssProtection({
    this.modeBlock,
    required this.override,
    required this.protection,
    this.reportUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeBlockValue = modeBlock;
    if (modeBlockValue != null) {
      map['modeBlock'] = modeBlockValue;
    }
    map['override'] = override;
    map['protection'] = protection;
    final reportUriValue = reportUri;
    if (reportUriValue != null) {
      map['reportUri'] = reportUriValue;
    }
    return map;
  }

  factory ResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigXssProtection(
      modeBlock: map['modeBlock'] == null ? null : map['modeBlock'] as bool,
      override: map['override'] as bool,
      protection: map['protection'] as bool,
      reportUri: map['reportUri'] == null ? null : map['reportUri'] as String,
    );
  }
}
