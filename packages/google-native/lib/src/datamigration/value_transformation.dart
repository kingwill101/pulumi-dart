// ignore_for_file: unused_element, unnecessary_cast

import 'apply_hash.dart';
import 'assign_specific_value.dart';
import 'double_comparison_filter.dart';
import 'int_comparison_filter.dart';
import 'round_to_scale.dart';
import 'value_list_filter.dart';

/// Description of data transformation during migration as part of the ConditionalColumnSetValue.
class ValueTransformation {
  /// Optional. Applies a hash function on the data
  final ApplyHash? applyHash;

  /// Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc
  final Map<String, dynamic>? assignMaxValue;

  /// Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc
  final Map<String, dynamic>? assignMinValue;

  /// Optional. Set to null
  final Map<String, dynamic>? assignNull;

  /// Optional. Set to a specific value (value is converted to fit the target data type)
  final AssignSpecificValue? assignSpecificValue;

  /// Optional. Filter on relation between source value and compare value of type double.
  final DoubleComparisonFilter? doubleComparison;

  /// Optional. Filter on relation between source value and compare value of type integer.
  final IntComparisonFilter? intComparison;

  /// Optional. Value is null
  final Map<String, dynamic>? isNull;

  /// Optional. Allows the data to change scale
  final RoundToScale? roundScale;

  /// Optional. Value is found in the specified list.
  final ValueListFilter? valueList;

  /// Creates a new [ValueTransformation].
  /// [applyHash] Optional. Applies a hash function on the data
  /// [assignMaxValue] Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc
  /// [assignMinValue] Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc
  /// [assignNull] Optional. Set to null
  /// [assignSpecificValue] Optional. Set to a specific value (value is converted to fit the target data type)
  /// [doubleComparison] Optional. Filter on relation between source value and compare value of type double.
  /// [intComparison] Optional. Filter on relation between source value and compare value of type integer.
  /// [isNull] Optional. Value is null
  /// [roundScale] Optional. Allows the data to change scale
  /// [valueList] Optional. Value is found in the specified list.
  ValueTransformation({
    this.applyHash,
    this.assignMaxValue,
    this.assignMinValue,
    this.assignNull,
    this.assignSpecificValue,
    this.doubleComparison,
    this.intComparison,
    this.isNull,
    this.roundScale,
    this.valueList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyHashValue = applyHash;
    if (applyHashValue != null) {
      map['applyHash'] = applyHashValue.toMap();
    }
    final assignMaxValueValue = assignMaxValue;
    if (assignMaxValueValue != null) {
      map['assignMaxValue'] = assignMaxValueValue;
    }
    final assignMinValueValue = assignMinValue;
    if (assignMinValueValue != null) {
      map['assignMinValue'] = assignMinValueValue;
    }
    final assignNullValue = assignNull;
    if (assignNullValue != null) {
      map['assignNull'] = assignNullValue;
    }
    final assignSpecificValueValue = assignSpecificValue;
    if (assignSpecificValueValue != null) {
      map['assignSpecificValue'] = assignSpecificValueValue.toMap();
    }
    final doubleComparisonValue = doubleComparison;
    if (doubleComparisonValue != null) {
      map['doubleComparison'] = doubleComparisonValue.toMap();
    }
    final intComparisonValue = intComparison;
    if (intComparisonValue != null) {
      map['intComparison'] = intComparisonValue.toMap();
    }
    final isNullValue = isNull;
    if (isNullValue != null) {
      map['isNull'] = isNullValue;
    }
    final roundScaleValue = roundScale;
    if (roundScaleValue != null) {
      map['roundScale'] = roundScaleValue.toMap();
    }
    final valueListValue = valueList;
    if (valueListValue != null) {
      map['valueList'] = valueListValue.toMap();
    }
    return map;
  }

  factory ValueTransformation.fromMap(Map<String, dynamic> map) {
    return ValueTransformation(
      applyHash: map['applyHash'] == null
          ? null
          : ApplyHash.fromMap(
              (map['applyHash'] as Map).cast<String, dynamic>()),
      assignMaxValue: map['assignMaxValue'] == null
          ? null
          : (map['assignMaxValue'] as Map).cast<String, dynamic>(),
      assignMinValue: map['assignMinValue'] == null
          ? null
          : (map['assignMinValue'] as Map).cast<String, dynamic>(),
      assignNull: map['assignNull'] == null
          ? null
          : (map['assignNull'] as Map).cast<String, dynamic>(),
      assignSpecificValue: map['assignSpecificValue'] == null
          ? null
          : AssignSpecificValue.fromMap(
              (map['assignSpecificValue'] as Map).cast<String, dynamic>()),
      doubleComparison: map['doubleComparison'] == null
          ? null
          : DoubleComparisonFilter.fromMap(
              (map['doubleComparison'] as Map).cast<String, dynamic>()),
      intComparison: map['intComparison'] == null
          ? null
          : IntComparisonFilter.fromMap(
              (map['intComparison'] as Map).cast<String, dynamic>()),
      isNull: map['isNull'] == null
          ? null
          : (map['isNull'] as Map).cast<String, dynamic>(),
      roundScale: map['roundScale'] == null
          ? null
          : RoundToScale.fromMap(
              (map['roundScale'] as Map).cast<String, dynamic>()),
      valueList: map['valueList'] == null
          ? null
          : ValueListFilter.fromMap(
              (map['valueList'] as Map).cast<String, dynamic>()),
    );
  }
}
