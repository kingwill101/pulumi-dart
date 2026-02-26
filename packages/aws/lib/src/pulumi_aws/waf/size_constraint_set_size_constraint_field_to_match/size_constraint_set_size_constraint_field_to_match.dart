// ignore_for_file: unused_element, unnecessary_cast

class SizeConstraintSetSizeConstraintFieldToMatch {
  /// When the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `HEADER`, specify the name of the header that you want to search using the <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span> field, for example, `User-Agent` or `Referer`. If the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is any other value, you can omit this field.
  final String? data;

  /// Part of the web request that you want AWS WAF to search for a specified string. For example, `HEADER`, `METHOD`, or `BODY`. See the [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_FieldToMatch.html) for all supported values.
  final String type;

  SizeConstraintSetSizeConstraintFieldToMatch({
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

  factory SizeConstraintSetSizeConstraintFieldToMatch.fromMap(
      Map<String, dynamic> map) {
    return SizeConstraintSetSizeConstraintFieldToMatch(
      data: map['data'] == null ? null : map['data'] as String,
      type: map['type'] as String,
    );
  }
}
