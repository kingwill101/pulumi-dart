// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigTypeConverterEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final String key;

  /// Specifies the type to convert the field value to. Allowed values are: <span pulumi-lang-nodejs="`integer`" pulumi-lang-dotnet="`Integer`" pulumi-lang-go="`integer`" pulumi-lang-python="`integer`" pulumi-lang-yaml="`integer`" pulumi-lang-java="`integer`">`integer`</span>, <span pulumi-lang-nodejs="`double`" pulumi-lang-dotnet="`Double`" pulumi-lang-go="`double`" pulumi-lang-python="`double`" pulumi-lang-yaml="`double`" pulumi-lang-java="`double`">`double`</span>, <span pulumi-lang-nodejs="`string`" pulumi-lang-dotnet="`String`" pulumi-lang-go="`string`" pulumi-lang-python="`string`" pulumi-lang-yaml="`string`" pulumi-lang-java="`string`">`string`</span> and <span pulumi-lang-nodejs="`boolean`" pulumi-lang-dotnet="`Boolean`" pulumi-lang-go="`boolean`" pulumi-lang-python="`boolean`" pulumi-lang-yaml="`boolean`" pulumi-lang-java="`boolean`">`boolean`</span>.
  final String type;

  LogTransformerTransformerConfigTypeConverterEntry({
    required this.key,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['type'] = type;
    return map;
  }

  factory LogTransformerTransformerConfigTypeConverterEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigTypeConverterEntry(
      key: map['key'] as String,
      type: map['type'] as String,
    );
  }
}
