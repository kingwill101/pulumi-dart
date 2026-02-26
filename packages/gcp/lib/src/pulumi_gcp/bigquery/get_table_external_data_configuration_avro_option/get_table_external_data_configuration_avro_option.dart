// ignore_for_file: unused_element, unnecessary_cast

class GetTableExternalDataConfigurationAvroOption {
  /// If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final bool useAvroLogicalTypes;

  GetTableExternalDataConfigurationAvroOption({
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['useAvroLogicalTypes'] = useAvroLogicalTypes;
    return map;
  }

  factory GetTableExternalDataConfigurationAvroOption.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationAvroOption(
      useAvroLogicalTypes: map['useAvroLogicalTypes'] as bool,
    );
  }
}
