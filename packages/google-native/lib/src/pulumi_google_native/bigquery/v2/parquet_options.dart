// ignore_for_file: unused_element, unnecessary_cast

class ParquetOptions {
  /// [Optional] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final bool? enableListInference;

  /// [Optional] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final bool? enumAsString;

  ParquetOptions({
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

  factory ParquetOptions.fromMap(Map<String, dynamic> map) {
    return ParquetOptions(
      enableListInference: map['enableListInference'] == null
          ? null
          : map['enableListInference'] as bool,
      enumAsString:
          map['enumAsString'] == null ? null : map['enumAsString'] as bool,
    );
  }
}
