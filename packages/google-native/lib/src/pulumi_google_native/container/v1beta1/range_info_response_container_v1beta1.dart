// ignore_for_file: unused_element, unnecessary_cast

/// RangeInfo contains the range name and the range utilization by this cluster.
class RangeInfoResponseContainerV1beta1 {
  /// [Output only] Name of a range.
  final String rangeName;

  /// [Output only] The utilization of the range.
  final double utilization;

  RangeInfoResponseContainerV1beta1({
    required this.rangeName,
    required this.utilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rangeName'] = rangeName;
    map['utilization'] = utilization;
    return map;
  }

  factory RangeInfoResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return RangeInfoResponseContainerV1beta1(
      rangeName: map['rangeName'] as String,
      utilization: map['utilization'] as double,
    );
  }
}
