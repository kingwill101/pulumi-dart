// ignore_for_file: unused_element, unnecessary_cast


class ChannelMaintenance {
  /// The day of the week to use for maintenance.
  final String maintenanceDay;
  /// The hour maintenance will start.
  final String maintenanceStartTime;

  /// Creates a new [ChannelMaintenance].
  /// [maintenanceDay] The day of the week to use for maintenance.
  /// [maintenanceStartTime] The hour maintenance will start.
  ChannelMaintenance({
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
      maintenanceDay: map['maintenanceDay'] as String,
      maintenanceStartTime: map['maintenanceStartTime'] as String,
    );
  }
}

