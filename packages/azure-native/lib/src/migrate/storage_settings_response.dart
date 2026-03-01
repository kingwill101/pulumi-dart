// ignore_for_file: unused_element, unnecessary_cast


/// Storage settings.
class StorageSettingsResponse {
  /// Cost per gigabyte per month.
  final double costPerGbPerMonth;
  /// Maintenance cost percentage.
  final double maintainanceCostPercentageToAcquisitionCost;

  /// Creates a new [StorageSettingsResponse].
  /// [costPerGbPerMonth] Cost per gigabyte per month.
  /// [maintainanceCostPercentageToAcquisitionCost] Maintenance cost percentage.
  StorageSettingsResponse({
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
      costPerGbPerMonth: map['costPerGbPerMonth'] as double,
      maintainanceCostPercentageToAcquisitionCost: map['maintainanceCostPercentageToAcquisitionCost'] as double,
    );
  }
}

