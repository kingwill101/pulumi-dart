// ignore_for_file: unused_element, unnecessary_cast


/// Defines the KPI Threshold limits.
class KpiThresholds {
  /// Whether or not the KPI is an increasing KPI.
  final bool increasingKpi;
  /// The lower threshold limit.
  final double lowerLimit;
  /// The upper threshold limit.
  final double upperLimit;

  /// Creates a new [KpiThresholds].
  /// [increasingKpi] Whether or not the KPI is an increasing KPI.
  /// [lowerLimit] The lower threshold limit.
  /// [upperLimit] The upper threshold limit.
  KpiThresholds({
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

  factory KpiThresholds.fromMap(Map<String, dynamic> map) {
    return KpiThresholds(
      increasingKpi: map['increasingKpi'] as bool,
      lowerLimit: map['lowerLimit'] as double,
      upperLimit: map['upperLimit'] as double,
    );
  }
}

