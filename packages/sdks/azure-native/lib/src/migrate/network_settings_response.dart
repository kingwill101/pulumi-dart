// ignore_for_file: unused_element, unnecessary_cast


/// Network settings.
class NetworkSettingsResponse {
  /// Network hardware and software cost percentage.
  final double hardwareSoftwareCostPercentage;
  /// Network maintenance cost percentage.
  final double maintenanceCostPercentage;

  /// Creates a new [NetworkSettingsResponse].
  /// [hardwareSoftwareCostPercentage] Network hardware and software cost percentage.
  /// [maintenanceCostPercentage] Network maintenance cost percentage.
  NetworkSettingsResponse({
    required this.hardwareSoftwareCostPercentage,
    required this.maintenanceCostPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardwareSoftwareCostPercentage': hardwareSoftwareCostPercentage,
      'maintenanceCostPercentage': maintenanceCostPercentage,
    };
  }

  factory NetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsResponse(
      hardwareSoftwareCostPercentage: map['hardwareSoftwareCostPercentage'] as double,
      maintenanceCostPercentage: map['maintenanceCostPercentage'] as double,
    );
  }
}

