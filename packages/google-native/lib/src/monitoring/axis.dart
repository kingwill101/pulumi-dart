// ignore_for_file: unused_element, unnecessary_cast

import 'axis_scale.dart';

/// A chart axis.
class Axis {
  /// The label of the axis.
  final String? label;

  /// The axis scale. By default, a linear scale is used.
  final AxisScale? scale;

  /// Creates a new [Axis].
  /// [label] The label of the axis.
  /// [scale] The axis scale. By default, a linear scale is used.
  Axis({this.label, this.scale});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'scale': ?scale == null ? null : scale!.value,
    };
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
