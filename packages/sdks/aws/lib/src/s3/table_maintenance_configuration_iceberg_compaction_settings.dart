// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableMaintenanceConfigurationIcebergCompactionSettings {
  /// Data objects smaller than this size may be combined with others to improve query performance.
  /// Must be between `64` and `512`.
  final pulumi.Input<int> targetFileSizeMb;

  /// Creates a new [TableMaintenanceConfigurationIcebergCompactionSettings].
  /// [targetFileSizeMb] Data objects smaller than this size may be combined with others to improve query performance.
  TableMaintenanceConfigurationIcebergCompactionSettings({
    required this.targetFileSizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetFileSizeMb': targetFileSizeMb,
    };
  }

  factory TableMaintenanceConfigurationIcebergCompactionSettings.fromMap(Map<String, dynamic> map) {
    return TableMaintenanceConfigurationIcebergCompactionSettings(
      targetFileSizeMb: pulumi.Input.fromValue(map['targetFileSizeMb'] as int),
    );
  }
}

