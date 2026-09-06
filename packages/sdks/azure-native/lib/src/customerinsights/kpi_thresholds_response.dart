// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the KPI Threshold limits.
class KpiThresholdsResponse {
  /// Whether or not the KPI is an increasing KPI.
  final pulumi.Input<bool> increasingKpi;
  /// The lower threshold limit.
  final pulumi.Input<double> lowerLimit;
  /// The upper threshold limit.
  final pulumi.Input<double> upperLimit;

  /// Creates a new [KpiThresholdsResponse].
  /// [increasingKpi] Whether or not the KPI is an increasing KPI.
  /// [lowerLimit] The lower threshold limit.
  /// [upperLimit] The upper threshold limit.
  const KpiThresholdsResponse({
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
      increasingKpi: pulumi.Input.fromValue(map['increasingKpi'] as bool),
      lowerLimit: pulumi.Input.fromValue((map['lowerLimit'] as num).toDouble()),
      upperLimit: pulumi.Input.fromValue((map['upperLimit'] as num).toDouble()),
    );
  }
}
