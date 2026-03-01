// ignore_for_file: unused_element, unnecessary_cast


/// Network settings.
class NetworkSettings {
  /// Network hardware and software cost percentage.
  final double hardwareSoftwareCostPercentage;
  /// Network maintenance cost percentage.
  final double maintenanceCostPercentage;

  /// Creates a new [NetworkSettings].
  /// [hardwareSoftwareCostPercentage] Network hardware and software cost percentage.
  /// [maintenanceCostPercentage] Network maintenance cost percentage.
  NetworkSettings({
    required this.hardwareSoftwareCostPercentage,
    required this.maintenanceCostPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardwareSoftwareCostPercentage': hardwareSoftwareCostPercentage,
      'maintenanceCostPercentage': maintenanceCostPercentage,
    };
  }

  factory NetworkSettings.fromMap(Map<String, dynamic> map) {
    return NetworkSettings(
      hardwareSoftwareCostPercentage: map['hardwareSoftwareCostPercentage'] as double,
      maintenanceCostPercentage: map['maintenanceCostPercentage'] as double,
    );
  }
}

