// ignore_for_file: unused_element, unnecessary_cast

class TableExternalDataConfigurationAvroOptions {
  /// If is set to true, indicates whether
  /// to interpret logical types as the corresponding BigQuery data type
  /// (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final bool useAvroLogicalTypes;

  /// Creates a new [TableExternalDataConfigurationAvroOptions].
  /// [useAvroLogicalTypes] If is set to true, indicates whether
  TableExternalDataConfigurationAvroOptions({
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['useAvroLogicalTypes'] = useAvroLogicalTypes;
    return map;
  }

  factory TableExternalDataConfigurationAvroOptions.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationAvroOptions(
      useAvroLogicalTypes: map['useAvroLogicalTypes'] as bool,
    );
  }
}
