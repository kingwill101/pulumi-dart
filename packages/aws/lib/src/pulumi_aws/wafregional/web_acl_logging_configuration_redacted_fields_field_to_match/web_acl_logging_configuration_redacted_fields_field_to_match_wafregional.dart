// ignore_for_file: unused_element, unnecessary_cast

class WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional {
  /// When the value of `type` is `HEADER`, enter the name of the header that you want the WAF to search, for example, `User-Agent` or `Referer`. If the value of `type` is any other value, omit `data`.
  final String? data;

  /// The part of the web request that you want AWS WAF to search for a specified stringE.g., `HEADER` or `METHOD`
  final String type;

  WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['type'] = type;
    return map;
  }

  factory WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}
