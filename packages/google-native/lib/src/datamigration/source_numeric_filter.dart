// ignore_for_file: unused_element, unnecessary_cast

import 'source_numeric_filter_numeric_filter_option.dart';

/// Filter for fixed point number data types such as NUMERIC/NUMBER
class SourceNumericFilter {
  /// Enum to set the option defining the datatypes numeric filter has to be applied to
  final SourceNumericFilterNumericFilterOption numericFilterOption;

  /// Optional. The filter will match columns with precision smaller than or equal to this number.
  final int? sourceMaxPrecisionFilter;

  /// Optional. The filter will match columns with scale smaller than or equal to this number.
  final int? sourceMaxScaleFilter;

  /// Optional. The filter will match columns with precision greater than or equal to this number.
  final int? sourceMinPrecisionFilter;

  /// Optional. The filter will match columns with scale greater than or equal to this number.
  final int? sourceMinScaleFilter;

  /// Creates a new [SourceNumericFilter].
  /// [numericFilterOption] Enum to set the option defining the datatypes numeric filter has to be applied to
  /// [sourceMaxPrecisionFilter] Optional. The filter will match columns with precision smaller than or equal to this number.
  /// [sourceMaxScaleFilter] Optional. The filter will match columns with scale smaller than or equal to this number.
  /// [sourceMinPrecisionFilter] Optional. The filter will match columns with precision greater than or equal to this number.
  /// [sourceMinScaleFilter] Optional. The filter will match columns with scale greater than or equal to this number.
  SourceNumericFilter({
    required this.numericFilterOption,
    this.sourceMaxPrecisionFilter,
    this.sourceMaxScaleFilter,
    this.sourceMinPrecisionFilter,
    this.sourceMinScaleFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['numericFilterOption'] = numericFilterOption.value;
    final sourceMaxPrecisionFilterValue = sourceMaxPrecisionFilter;
    if (sourceMaxPrecisionFilterValue != null) {
      map['sourceMaxPrecisionFilter'] = sourceMaxPrecisionFilterValue;
    }
    final sourceMaxScaleFilterValue = sourceMaxScaleFilter;
    if (sourceMaxScaleFilterValue != null) {
      map['sourceMaxScaleFilter'] = sourceMaxScaleFilterValue;
    }
    final sourceMinPrecisionFilterValue = sourceMinPrecisionFilter;
    if (sourceMinPrecisionFilterValue != null) {
      map['sourceMinPrecisionFilter'] = sourceMinPrecisionFilterValue;
    }
    final sourceMinScaleFilterValue = sourceMinScaleFilter;
    if (sourceMinScaleFilterValue != null) {
      map['sourceMinScaleFilter'] = sourceMinScaleFilterValue;
    }
    return map;
  }

  factory SourceNumericFilter.fromMap(Map<String, dynamic> map) {
    return SourceNumericFilter(
      numericFilterOption: SourceNumericFilterNumericFilterOption.fromValue(
          map['numericFilterOption'] as String),
      sourceMaxPrecisionFilter: map['sourceMaxPrecisionFilter'] == null
          ? null
          : map['sourceMaxPrecisionFilter'] as int,
      sourceMaxScaleFilter: map['sourceMaxScaleFilter'] == null
          ? null
          : map['sourceMaxScaleFilter'] as int,
      sourceMinPrecisionFilter: map['sourceMinPrecisionFilter'] == null
          ? null
          : map['sourceMinPrecisionFilter'] as int,
      sourceMinScaleFilter: map['sourceMinScaleFilter'] == null
          ? null
          : map['sourceMinScaleFilter'] as int,
    );
  }
}
