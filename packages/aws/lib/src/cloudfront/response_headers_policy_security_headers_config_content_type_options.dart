// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions {
  /// Whether CloudFront overrides the `X-Content-Type-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions].
  /// [override] Whether CloudFront overrides the `X-Content-Type-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions({
    required this.override,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['override'] = override;
    return map;
  }

  factory ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions(
      override: map['override'] as bool,
    );
  }
}
