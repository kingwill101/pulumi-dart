// ignore_for_file: unused_element, unnecessary_cast

import 'axis_scale.dart';

/// A chart axis.
class Axis {
  /// The label of the axis.
  final String? label;

  /// The axis scale. By default, a linear scale is used.
  final AxisScale? scale;

  Axis({
    this.label,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final scaleValue = scale;
    if (scaleValue != null) {
      map['scale'] = scaleValue.value;
    }
    return map;
  }

  factory Axis.fromMap(Map<String, dynamic> map) {
    return Axis(
      label: map['label'] == null ? null : map['label'] as String,
      scale: map['scale'] == null
          ? null
          : AxisScale.fromValue(map['scale'] as String),
    );
  }
}
