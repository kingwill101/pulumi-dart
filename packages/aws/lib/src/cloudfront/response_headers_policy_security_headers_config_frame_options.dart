// ignore_for_file: unused_element, unnecessary_cast


class ResponseHeadersPolicySecurityHeadersConfigFrameOptions {
  /// The value of the `X-Frame-Options` HTTP response header. Valid values: `DENY` | `SAMEORIGIN`
  final String frameOption;
  /// Whether CloudFront overrides the `X-Frame-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigFrameOptions].
  /// [frameOption] The value of the `X-Frame-Options` HTTP response header. Valid values: `DENY` | `SAMEORIGIN`
  /// [override] Whether CloudFront overrides the `X-Frame-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  ResponseHeadersPolicySecurityHeadersConfigFrameOptions({
    required this.frameOption,
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frameOption': frameOption,
      'override': override,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigFrameOptions.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigFrameOptions(
      frameOption: map['frameOption'] as String,
      override: map['override'] as bool,
    );
  }
}

