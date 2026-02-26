// ignore_for_file: unused_element, unnecessary_cast

/// RangeInfo contains the range name and the range utilization by this cluster.
class RangeInfoResponse {
  /// [Output only] Name of a range.
  final String rangeName;

  /// [Output only] The utilization of the range.
  final double utilization;

  RangeInfoResponse({
    required this.rangeName,
    required this.utilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rangeName'] = rangeName;
    map['utilization'] = utilization;
    return map;
  }

  factory RangeInfoResponse.fromMap(Map<String, dynamic> map) {
    return RangeInfoResponse(
      rangeName: map['rangeName'] as String,
      utilization: map['utilization'] as double,
    );
  }
}
