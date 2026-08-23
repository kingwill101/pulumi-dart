// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudAutonomousVmClusterMaintenanceWindowMonth {
  /// Name of the month. Valid values are `JANUARY`, `FEBRUARY`, `MARCH`, `APRIL`, `MAY`, `JUNE`, `JULY`, `AUGUST`, `SEPTEMBER`, `OCTOBER`, `NOVEMBER`, and `DECEMBER`.
  final pulumi.Input<String> name;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindowMonth].
  /// [name] Name of the month. Valid values are `JANUARY`, `FEBRUARY`, `MARCH`, `APRIL`, `MAY`, `JUNE`, `JULY`, `AUGUST`, `SEPTEMBER`, `OCTOBER`, `NOVEMBER`, and `DECEMBER`.
  const CloudAutonomousVmClusterMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowMonth(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
