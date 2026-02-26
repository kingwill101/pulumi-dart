// ignore_for_file: unused_element, unnecessary_cast

class WebAclLoggingConfigurationRedactedFieldsFieldToMatch2 {
  /// When the value of <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `HEADER`, enter the name of the header that you want the WAF to search, for example, `User-Agent` or `Referer`. If the value of <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is any other value, omit <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span>.
  final String? data;

  /// The part of the web request that you want AWS WAF to search for a specified stringE.g., `HEADER` or `METHOD`
  final String type;

  WebAclLoggingConfigurationRedactedFieldsFieldToMatch2({
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

  factory WebAclLoggingConfigurationRedactedFieldsFieldToMatch2.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFieldsFieldToMatch2(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}
