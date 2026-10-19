// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelMaintenance {
  /// Day of the week to use for maintenance.
  final pulumi.Input<String> maintenanceDay;
  /// Hour maintenance will start.
  final pulumi.Input<String> maintenanceStartTime;

  /// Creates a new [ChannelMaintenance].
  /// [maintenanceDay] Day of the week to use for maintenance.
  /// [maintenanceStartTime] Hour maintenance will start.
  const ChannelMaintenance({
    required this.maintenanceDay,
    required this.maintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceDay': maintenanceDay,
      'maintenanceStartTime': maintenanceStartTime,
    };
  }

  factory ChannelMaintenance.fromMap(Map<String, dynamic> map) {
    return ChannelMaintenance(
      maintenanceDay: pulumi.Input.fromValue(map['maintenanceDay'] as String),
      maintenanceStartTime: pulumi.Input.fromValue(map['maintenanceStartTime'] as String),
    );
  }
}
