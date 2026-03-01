// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicySecurityHeadersConfigFrameOption {
  /// Value of the X-Frame-Options HTTP response header. Valid values: `DENY` | `SAMEORIGIN`
  final String frameOption;

  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigFrameOption].
  /// [frameOption] Value of the X-Frame-Options HTTP response header. Valid values: `DENY` | `SAMEORIGIN`
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  GetResponseHeadersPolicySecurityHeadersConfigFrameOption({
    required this.frameOption,
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'frameOption': frameOption, 'override': override};
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigFrameOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicySecurityHeadersConfigFrameOption(
      frameOption: map['frameOption'] as String,
      override: map['override'] as bool,
    );
  }
}
