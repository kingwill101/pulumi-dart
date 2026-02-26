// ignore_for_file: unused_element, unnecessary_cast

class ChannelMaintenance {
  /// The day of the week to use for maintenance.
  final String maintenanceDay;

  /// The hour maintenance will start.
  final String maintenanceStartTime;

  ChannelMaintenance({
    required this.maintenanceDay,
    required this.maintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceDay'] = maintenanceDay;
    map['maintenanceStartTime'] = maintenanceStartTime;
    return map;
  }

  factory ChannelMaintenance.fromMap(Map<String, dynamic> map) {
    return ChannelMaintenance(
      maintenanceDay: map['maintenanceDay'] as String,
      maintenanceStartTime: map['maintenanceStartTime'] as String,
    );
  }
}
