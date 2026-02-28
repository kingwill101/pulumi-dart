// ignore_for_file: unused_element, unnecessary_cast

class GetTableExternalDataConfigurationParquetOption {
  /// Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final bool enableListInference;

  /// Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final bool enumAsString;

  /// Creates a new [GetTableExternalDataConfigurationParquetOption].
  /// [enableListInference] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  GetTableExternalDataConfigurationParquetOption({
    required this.enableListInference,
    required this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableListInference'] = enableListInference;
    map['enumAsString'] = enumAsString;
    return map;
  }

  factory GetTableExternalDataConfigurationParquetOption.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationParquetOption(
      enableListInference: map['enableListInference'] as bool,
      enumAsString: map['enumAsString'] as bool,
    );
  }
}
