// ignore_for_file: unused_element, unnecessary_cast

class FeatureVariationValue {
  /// If this feature uses the Boolean variation type, this field contains the Boolean value of this variation.
  final String? boolValue;

  /// If this feature uses the double integer variation type, this field contains the double integer value of this variation.
  final String? doubleValue;

  /// If this feature uses the long variation type, this field contains the long value of this variation. Minimum value of `-9007199254740991`. Maximum value of <span pulumi-lang-nodejs="`9007199254740991`" pulumi-lang-dotnet="`9007199254740991`" pulumi-lang-go="`9007199254740991`" pulumi-lang-python="`9007199254740991`" pulumi-lang-yaml="`9007199254740991`" pulumi-lang-java="`9007199254740991`">`9007199254740991`</span>.
  final String? longValue;

  /// If this feature uses the string variation type, this field contains the string value of this variation. Minimum length of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Maximum length of <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>.
  final String? stringValue;

  FeatureVariationValue({
    this.boolValue,
    this.doubleValue,
    this.longValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boolValueValue = boolValue;
    if (boolValueValue != null) {
      map['boolValue'] = boolValueValue;
    }
    final doubleValueValue = doubleValue;
    if (doubleValueValue != null) {
      map['doubleValue'] = doubleValueValue;
    }
    final longValueValue = longValue;
    if (longValueValue != null) {
      map['longValue'] = longValueValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory FeatureVariationValue.fromMap(Map<String, dynamic> map) {
    return FeatureVariationValue(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as String,
      doubleValue:
          map['doubleValue'] == null ? null : map['doubleValue'] as String,
      longValue: map['longValue'] == null ? null : map['longValue'] as String,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
