// ignore_for_file: unused_element, unnecessary_cast

class AvroOptionsResponse {
  /// [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final bool useAvroLogicalTypes;

  /// Creates a new [AvroOptionsResponse].
  /// [useAvroLogicalTypes] [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  AvroOptionsResponse({
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['useAvroLogicalTypes'] = useAvroLogicalTypes;
    return map;
  }

  factory AvroOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AvroOptionsResponse(
      useAvroLogicalTypes: map['useAvroLogicalTypes'] as bool,
    );
  }
}
