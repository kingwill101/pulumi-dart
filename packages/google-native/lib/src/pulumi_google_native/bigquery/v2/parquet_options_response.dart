// ignore_for_file: unused_element, unnecessary_cast

class ParquetOptionsResponse {
  /// [Optional] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final bool enableListInference;

  /// [Optional] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final bool enumAsString;

  ParquetOptionsResponse({
    required this.enableListInference,
    required this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableListInference'] = enableListInference;
    map['enumAsString'] = enumAsString;
    return map;
  }

  factory ParquetOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ParquetOptionsResponse(
      enableListInference: map['enableListInference'] as bool,
      enumAsString: map['enumAsString'] as bool,
    );
  }
}
