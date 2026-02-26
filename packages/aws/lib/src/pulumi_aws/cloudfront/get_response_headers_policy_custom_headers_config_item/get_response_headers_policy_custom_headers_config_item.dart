// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyCustomHeadersConfigItem {
  /// The HTTP header name.
  final String header;

  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final bool override;

  /// Value for the HTTP response header.
  final String value;

  GetResponseHeadersPolicyCustomHeadersConfigItem({
    required this.header,
    required this.override,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header;
    map['override'] = override;
    map['value'] = value;
    return map;
  }

  factory GetResponseHeadersPolicyCustomHeadersConfigItem.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCustomHeadersConfigItem(
      header: map['header'] as String,
      override: map['override'] as bool,
      value: map['value'] as String,
    );
  }
}
