// ignore_for_file: unused_element, unnecessary_cast


/// Storage settings.
class StorageSettings {
  /// Cost per gigabyte per month.
  final double costPerGbPerMonth;
  /// Maintenance cost percentage.
  final double maintainanceCostPercentageToAcquisitionCost;

  /// Creates a new [StorageSettings].
  /// [costPerGbPerMonth] Cost per gigabyte per month.
  /// [maintainanceCostPercentageToAcquisitionCost] Maintenance cost percentage.
  StorageSettings({
    required this.costPerGbPerMonth,
    required this.maintainanceCostPercentageToAcquisitionCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costPerGbPerMonth': costPerGbPerMonth,
      'maintainanceCostPercentageToAcquisitionCost': maintainanceCostPercentageToAcquisitionCost,
    };
  }

  factory StorageSettings.fromMap(Map<String, dynamic> map) {
    return StorageSettings(
      costPerGbPerMonth: map['costPerGbPerMonth'] as double,
      maintainanceCostPercentageToAcquisitionCost: map['maintainanceCostPercentageToAcquisitionCost'] as double,
    );
  }
}

