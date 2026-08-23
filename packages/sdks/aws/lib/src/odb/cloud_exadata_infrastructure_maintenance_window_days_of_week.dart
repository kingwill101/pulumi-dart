// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudExadataInfrastructureMaintenanceWindowDaysOfWeek {
  /// Name of the day of the week. Valid values are `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, and `SUNDAY`.
  final pulumi.Input<String> name;

  /// Creates a new [CloudExadataInfrastructureMaintenanceWindowDaysOfWeek].
  /// [name] Name of the day of the week. Valid values are `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, and `SUNDAY`.
  const CloudExadataInfrastructureMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureMaintenanceWindowDaysOfWeek(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
