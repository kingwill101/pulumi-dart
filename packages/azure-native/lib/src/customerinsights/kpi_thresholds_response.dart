// ignore_for_file: unused_element, unnecessary_cast


/// Defines the KPI Threshold limits.
class KpiThresholdsResponse {
  /// Whether or not the KPI is an increasing KPI.
  final bool increasingKpi;
  /// The lower threshold limit.
  final double lowerLimit;
  /// The upper threshold limit.
  final double upperLimit;

  /// Creates a new [KpiThresholdsResponse].
  /// [increasingKpi] Whether or not the KPI is an increasing KPI.
  /// [lowerLimit] The lower threshold limit.
  /// [upperLimit] The upper threshold limit.
  KpiThresholdsResponse({
    required this.increasingKpi,
    required this.lowerLimit,
    required this.upperLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'increasingKpi': increasingKpi,
      'lowerLimit': lowerLimit,
      'upperLimit': upperLimit,
    };
  }

  factory KpiThresholdsResponse.fromMap(Map<String, dynamic> map) {
    return KpiThresholdsResponse(
      increasingKpi: map['increasingKpi'] as bool,
      lowerLimit: map['lowerLimit'] as double,
      upperLimit: map['upperLimit'] as double,
    );
  }
}

