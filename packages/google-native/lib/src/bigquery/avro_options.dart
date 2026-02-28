// ignore_for_file: unused_element, unnecessary_cast

class AvroOptions {
  /// [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final bool? useAvroLogicalTypes;

  /// Creates a new [AvroOptions].
  /// [useAvroLogicalTypes] [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  AvroOptions({
    this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final useAvroLogicalTypesValue = useAvroLogicalTypes;
    if (useAvroLogicalTypesValue != null) {
      map['useAvroLogicalTypes'] = useAvroLogicalTypesValue;
    }
    return map;
  }

  factory AvroOptions.fromMap(Map<String, dynamic> map) {
    return AvroOptions(
      useAvroLogicalTypes: map['useAvroLogicalTypes'] == null
          ? null
          : map['useAvroLogicalTypes'] as bool,
    );
  }
}
