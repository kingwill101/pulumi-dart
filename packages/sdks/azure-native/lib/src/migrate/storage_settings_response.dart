// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage settings.
class StorageSettingsResponse {
  /// Cost per gigabyte per month.
  final pulumi.Input<double> costPerGbPerMonth;
  /// Maintenance cost percentage.
  final pulumi.Input<double> maintainanceCostPercentageToAcquisitionCost;

  /// Creates a new [StorageSettingsResponse].
  /// [costPerGbPerMonth] Cost per gigabyte per month.
  /// [maintainanceCostPercentageToAcquisitionCost] Maintenance cost percentage.
  const StorageSettingsResponse({
    required this.costPerGbPerMonth,
    required this.maintainanceCostPercentageToAcquisitionCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costPerGbPerMonth': costPerGbPerMonth,
      'maintainanceCostPercentageToAcquisitionCost': maintainanceCostPercentageToAcquisitionCost,
    };
  }

  factory StorageSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StorageSettingsResponse(
      costPerGbPerMonth: pulumi.Input.fromValue(map['costPerGbPerMonth'] as double),
      maintainanceCostPercentageToAcquisitionCost: pulumi.Input.fromValue(map['maintainanceCostPercentageToAcquisitionCost'] as double),
    );
  }
}
