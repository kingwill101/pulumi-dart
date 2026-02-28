// ignore_for_file: unused_element, unnecessary_cast

import 'apply_hash_response.dart';
import 'assign_specific_value_response.dart';
import 'double_comparison_filter_response.dart';
import 'int_comparison_filter_response.dart';
import 'round_to_scale_response.dart';
import 'value_list_filter_response.dart';

/// Description of data transformation during migration as part of the ConditionalColumnSetValue.
class ValueTransformationResponse {
  /// Optional. Applies a hash function on the data
  final ApplyHashResponse applyHash;

  /// Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc
  final Map<String, dynamic> assignMaxValue;

  /// Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc
  final Map<String, dynamic> assignMinValue;

  /// Optional. Set to null
  final Map<String, dynamic> assignNull;

  /// Optional. Set to a specific value (value is converted to fit the target data type)
  final AssignSpecificValueResponse assignSpecificValue;

  /// Optional. Filter on relation between source value and compare value of type double.
  final DoubleComparisonFilterResponse doubleComparison;

  /// Optional. Filter on relation between source value and compare value of type integer.
  final IntComparisonFilterResponse intComparison;

  /// Optional. Value is null
  final Map<String, dynamic> isNull;

  /// Optional. Allows the data to change scale
  final RoundToScaleResponse roundScale;

  /// Optional. Value is found in the specified list.
  final ValueListFilterResponse valueList;

  /// Creates a new [ValueTransformationResponse].
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
  ValueTransformationResponse({
    required this.applyHash,
    required this.assignMaxValue,
    required this.assignMinValue,
    required this.assignNull,
    required this.assignSpecificValue,
    required this.doubleComparison,
    required this.intComparison,
    required this.isNull,
    required this.roundScale,
    required this.valueList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applyHash'] = applyHash.toMap();
    map['assignMaxValue'] = assignMaxValue;
    map['assignMinValue'] = assignMinValue;
    map['assignNull'] = assignNull;
    map['assignSpecificValue'] = assignSpecificValue.toMap();
    map['doubleComparison'] = doubleComparison.toMap();
    map['intComparison'] = intComparison.toMap();
    map['isNull'] = isNull;
    map['roundScale'] = roundScale.toMap();
    map['valueList'] = valueList.toMap();
    return map;
  }

  factory ValueTransformationResponse.fromMap(Map<String, dynamic> map) {
    return ValueTransformationResponse(
      applyHash: ApplyHashResponse.fromMap(
          (map['applyHash'] as Map).cast<String, dynamic>()),
      assignMaxValue: (map['assignMaxValue'] as Map).cast<String, dynamic>(),
      assignMinValue: (map['assignMinValue'] as Map).cast<String, dynamic>(),
      assignNull: (map['assignNull'] as Map).cast<String, dynamic>(),
      assignSpecificValue: AssignSpecificValueResponse.fromMap(
          (map['assignSpecificValue'] as Map).cast<String, dynamic>()),
      doubleComparison: DoubleComparisonFilterResponse.fromMap(
          (map['doubleComparison'] as Map).cast<String, dynamic>()),
      intComparison: IntComparisonFilterResponse.fromMap(
          (map['intComparison'] as Map).cast<String, dynamic>()),
      isNull: (map['isNull'] as Map).cast<String, dynamic>(),
      roundScale: RoundToScaleResponse.fromMap(
          (map['roundScale'] as Map).cast<String, dynamic>()),
      valueList: ValueListFilterResponse.fromMap(
          (map['valueList'] as Map).cast<String, dynamic>()),
    );
  }
}
