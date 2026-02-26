// ignore_for_file: unused_element, unnecessary_cast

/// Filter for fixed point number data types such as NUMERIC/NUMBER
class SourceNumericFilterResponse {
  /// Enum to set the option defining the datatypes numeric filter has to be applied to
  final String numericFilterOption;

  /// Optional. The filter will match columns with precision smaller than or equal to this number.
  final int sourceMaxPrecisionFilter;

  /// Optional. The filter will match columns with scale smaller than or equal to this number.
  final int sourceMaxScaleFilter;

  /// Optional. The filter will match columns with precision greater than or equal to this number.
  final int sourceMinPrecisionFilter;

  /// Optional. The filter will match columns with scale greater than or equal to this number.
  final int sourceMinScaleFilter;

  SourceNumericFilterResponse({
    required this.numericFilterOption,
    required this.sourceMaxPrecisionFilter,
    required this.sourceMaxScaleFilter,
    required this.sourceMinPrecisionFilter,
    required this.sourceMinScaleFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['numericFilterOption'] = numericFilterOption;
    map['sourceMaxPrecisionFilter'] = sourceMaxPrecisionFilter;
    map['sourceMaxScaleFilter'] = sourceMaxScaleFilter;
    map['sourceMinPrecisionFilter'] = sourceMinPrecisionFilter;
    map['sourceMinScaleFilter'] = sourceMinScaleFilter;
    return map;
  }

  factory SourceNumericFilterResponse.fromMap(Map<String, dynamic> map) {
    return SourceNumericFilterResponse(
      numericFilterOption: map['numericFilterOption'] as String,
      sourceMaxPrecisionFilter: map['sourceMaxPrecisionFilter'] as int,
      sourceMaxScaleFilter: map['sourceMaxScaleFilter'] as int,
      sourceMinPrecisionFilter: map['sourceMinPrecisionFilter'] as int,
      sourceMinScaleFilter: map['sourceMinScaleFilter'] as int,
    );
  }
}
