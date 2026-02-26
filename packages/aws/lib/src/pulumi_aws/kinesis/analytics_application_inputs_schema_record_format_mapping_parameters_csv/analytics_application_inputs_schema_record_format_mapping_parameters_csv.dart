// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv {
  /// The Column Delimiter.
  final String recordColumnDelimiter;

  /// The Row Delimiter.
  final String recordRowDelimiter;

  AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumnDelimiter'] = recordColumnDelimiter;
    map['recordRowDelimiter'] = recordRowDelimiter;
    return map;
  }

  factory AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv(
      recordColumnDelimiter: map['recordColumnDelimiter'] as String,
      recordRowDelimiter: map['recordRowDelimiter'] as String,
    );
  }
}
