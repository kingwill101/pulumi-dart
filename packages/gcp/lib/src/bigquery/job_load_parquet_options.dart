// ignore_for_file: unused_element, unnecessary_cast

class JobLoadParquetOptions {
  /// If sourceFormat is set to PARQUET, indicates whether to use schema inference specifically for Parquet LIST logical type.
  final bool? enableListInference;

  /// If sourceFormat is set to PARQUET, indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final bool? enumAsString;

  /// Creates a new [JobLoadParquetOptions].
  /// [enableListInference] If sourceFormat is set to PARQUET, indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] If sourceFormat is set to PARQUET, indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  JobLoadParquetOptions({
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

  factory JobLoadParquetOptions.fromMap(Map<String, dynamic> map) {
    return JobLoadParquetOptions(
      enableListInference: map['enableListInference'] == null
          ? null
          : map['enableListInference'] as bool,
      enumAsString:
          map['enumAsString'] == null ? null : map['enumAsString'] as bool,
    );
  }
}
