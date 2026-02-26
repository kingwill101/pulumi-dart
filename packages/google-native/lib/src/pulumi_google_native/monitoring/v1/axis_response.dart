// ignore_for_file: unused_element, unnecessary_cast

/// A chart axis.
class AxisResponse {
  /// The label of the axis.
  final String label;

  /// The axis scale. By default, a linear scale is used.
  final String scale;

  AxisResponse({
    required this.label,
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['scale'] = scale;
    return map;
  }

  factory AxisResponse.fromMap(Map<String, dynamic> map) {
    return AxisResponse(
      label: map['label'] as String,
      scale: map['scale'] as String,
    );
  }
}
