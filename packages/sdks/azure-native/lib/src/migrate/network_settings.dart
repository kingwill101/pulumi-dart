// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network settings.
class NetworkSettings {
  /// Network hardware and software cost percentage.
  final pulumi.Input<double> hardwareSoftwareCostPercentage;

  /// Network maintenance cost percentage.
  final pulumi.Input<double> maintenanceCostPercentage;

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
      hardwareSoftwareCostPercentage: pulumi.Input.fromValue(
        map['hardwareSoftwareCostPercentage'] as double,
      ),
      maintenanceCostPercentage: pulumi.Input.fromValue(
        map['maintenanceCostPercentage'] as double,
      ),
    );
  }
}
