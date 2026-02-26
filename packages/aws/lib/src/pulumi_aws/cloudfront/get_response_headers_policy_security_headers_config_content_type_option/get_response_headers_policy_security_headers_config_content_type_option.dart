// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption {
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption({
    required this.override,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['override'] = override;
    return map;
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption(
      override: map['override'] as bool,
    );
  }
}
