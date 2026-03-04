// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the KPI Threshold limits.
class KpiThresholds {
  /// Whether or not the KPI is an increasing KPI.
  final pulumi.Input<bool> increasingKpi;

  /// The lower threshold limit.
  final pulumi.Input<double> lowerLimit;

  /// The upper threshold limit.
  final pulumi.Input<double> upperLimit;

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
      increasingKpi: pulumi.Input.fromValue(map['increasingKpi'] as bool),
      lowerLimit: pulumi.Input.fromValue(map['lowerLimit'] as double),
      upperLimit: pulumi.Input.fromValue(map['upperLimit'] as double),
    );
  }
}
