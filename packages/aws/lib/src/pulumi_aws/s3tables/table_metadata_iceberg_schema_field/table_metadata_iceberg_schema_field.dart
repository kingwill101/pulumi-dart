// ignore_for_file: unused_element, unnecessary_cast

class TableMetadataIcebergSchemaField {
  /// The name of the field.
  final String name;

  /// A Boolean value that specifies whether values are required for each row in this field. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? required;

  /// The field type. S3 Tables supports all Apache Iceberg primitive types including: <span pulumi-lang-nodejs="`boolean`" pulumi-lang-dotnet="`Boolean`" pulumi-lang-go="`boolean`" pulumi-lang-python="`boolean`" pulumi-lang-yaml="`boolean`" pulumi-lang-java="`boolean`">`boolean`</span>, <span pulumi-lang-nodejs="`int`" pulumi-lang-dotnet="`Int`" pulumi-lang-go="`int`" pulumi-lang-python="`int`" pulumi-lang-yaml="`int`" pulumi-lang-java="`int`">`int`</span>, <span pulumi-lang-nodejs="`long`" pulumi-lang-dotnet="`Long`" pulumi-lang-go="`long`" pulumi-lang-python="`long`" pulumi-lang-yaml="`long`" pulumi-lang-java="`long`">`long`</span>, <span pulumi-lang-nodejs="`float`" pulumi-lang-dotnet="`Float`" pulumi-lang-go="`float`" pulumi-lang-python="`float`" pulumi-lang-yaml="`float`" pulumi-lang-java="`float`">`float`</span>, <span pulumi-lang-nodejs="`double`" pulumi-lang-dotnet="`Double`" pulumi-lang-go="`double`" pulumi-lang-python="`double`" pulumi-lang-yaml="`double`" pulumi-lang-java="`double`">`double`</span>, `decimal(precision,scale)`, <span pulumi-lang-nodejs="`date`" pulumi-lang-dotnet="`Date`" pulumi-lang-go="`date`" pulumi-lang-python="`date`" pulumi-lang-yaml="`date`" pulumi-lang-java="`date`">`date`</span>, <span pulumi-lang-nodejs="`time`" pulumi-lang-dotnet="`Time`" pulumi-lang-go="`time`" pulumi-lang-python="`time`" pulumi-lang-yaml="`time`" pulumi-lang-java="`time`">`time`</span>, <span pulumi-lang-nodejs="`timestamp`" pulumi-lang-dotnet="`Timestamp`" pulumi-lang-go="`timestamp`" pulumi-lang-python="`timestamp`" pulumi-lang-yaml="`timestamp`" pulumi-lang-java="`timestamp`">`timestamp`</span>, <span pulumi-lang-nodejs="`timestamptz`" pulumi-lang-dotnet="`Timestamptz`" pulumi-lang-go="`timestamptz`" pulumi-lang-python="`timestamptz`" pulumi-lang-yaml="`timestamptz`" pulumi-lang-java="`timestamptz`">`timestamptz`</span>, <span pulumi-lang-nodejs="`string`" pulumi-lang-dotnet="`String`" pulumi-lang-go="`string`" pulumi-lang-python="`string`" pulumi-lang-yaml="`string`" pulumi-lang-java="`string`">`string`</span>, <span pulumi-lang-nodejs="`uuid`" pulumi-lang-dotnet="`Uuid`" pulumi-lang-go="`uuid`" pulumi-lang-python="`uuid`" pulumi-lang-yaml="`uuid`" pulumi-lang-java="`uuid`">`uuid`</span>, `fixed(length)`, <span pulumi-lang-nodejs="`binary`" pulumi-lang-dotnet="`Binary`" pulumi-lang-go="`binary`" pulumi-lang-python="`binary`" pulumi-lang-yaml="`binary`" pulumi-lang-java="`binary`">`binary`</span>.
  final String type;

  TableMetadataIcebergSchemaField({
    required this.name,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['type'] = type;
    return map;
  }

  factory TableMetadataIcebergSchemaField.fromMap(Map<String, dynamic> map) {
    return TableMetadataIcebergSchemaField(
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
