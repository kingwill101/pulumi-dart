// ignore_for_file: unused_element, unnecessary_cast

class TableExternalDataConfigurationParquetOptions {
  /// Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final bool? enableListInference;

  /// Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final bool? enumAsString;

  /// Creates a new [TableExternalDataConfigurationParquetOptions].
  /// [enableListInference] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  TableExternalDataConfigurationParquetOptions({
    this.enableListInference,
    this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableListInferenceValue = enableListInference;
    if (enableListInferenceValue != null) {
      map['enableListInference'] = enableListInferenceValue;
    }
    final enumAsStringValue = enumAsString;
    if (enumAsStringValue != null) {
      map['enumAsString'] = enumAsStringValue;
    }
    return map;
  }

  factory TableExternalDataConfigurationParquetOptions.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationParquetOptions(
      enableListInference: map['enableListInference'] == null
          ? null
          : map['enableListInference'] as bool,
      enumAsString:
          map['enumAsString'] == null ? null : map['enumAsString'] as bool,
    );
  }
}
