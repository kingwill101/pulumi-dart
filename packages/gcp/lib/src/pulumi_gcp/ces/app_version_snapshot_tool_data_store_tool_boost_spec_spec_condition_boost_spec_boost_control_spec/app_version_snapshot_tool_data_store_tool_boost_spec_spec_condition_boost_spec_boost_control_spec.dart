// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec_boost_control_spec_control_point/app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec_boost_control_spec_control_point.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec {
  /// (Output)
  /// The attribute type to be used to determine the boost amount. The
  /// attribute value can be derived from the field value of the specified
  /// field_name. In the case of numerical it is straightforward i.e.
  /// attribute_value = numerical_field_value. In the case of freshness
  /// however, attribute_value = (time.now() - datetime_field_value).
  /// Possible values:
  /// NUMERICAL
  /// FRESHNESS
  final String? attributeType;

  /// (Output)
  /// The control points used to define the curve. The monotonic function
  /// (defined through the interpolation_type above) passes through the
  /// control points listed here.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint>?
      controlPoints;

  /// (Output)
  /// The name of the field whose value will be used to determine the
  /// boost amount.
  final String? fieldName;

  /// (Output)
  /// The interpolation type to be applied to connect the control points
  /// listed below.
  /// Possible values:
  /// LINEAR
  final String? interpolationType;

  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeTypeValue = attributeType;
    if (attributeTypeValue != null) {
      map['attributeType'] = attributeTypeValue;
    }
    final controlPointsValue = controlPoints;
    if (controlPointsValue != null) {
      map['controlPoints'] = Input.encodeList<
          AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint,
          Map<String, dynamic>>(controlPointsValue, (value) => value.toMap());
    }
    final fieldNameValue = fieldName;
    if (fieldNameValue != null) {
      map['fieldName'] = fieldNameValue;
    }
    final interpolationTypeValue = interpolationType;
    if (interpolationTypeValue != null) {
      map['interpolationType'] = interpolationTypeValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec(
      attributeType:
          map['attributeType'] == null ? null : map['attributeType'] as String,
      controlPoints: map['controlPoints'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint>(
              map['controlPoints'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint
                      .fromMap((value as Map).cast<String, dynamic>())),
      fieldName: map['fieldName'] == null ? null : map['fieldName'] as String,
      interpolationType: map['interpolationType'] == null
          ? null
          : map['interpolationType'] as String,
    );
  }
}
