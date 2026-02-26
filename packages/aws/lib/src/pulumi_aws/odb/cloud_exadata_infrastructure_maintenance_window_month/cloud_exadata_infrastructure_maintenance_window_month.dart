// ignore_for_file: unused_element, unnecessary_cast

class CloudExadataInfrastructureMaintenanceWindowMonth {
  final String name;

  CloudExadataInfrastructureMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory CloudExadataInfrastructureMaintenanceWindowMonth.fromMap(
      Map<String, dynamic> map) {
    return CloudExadataInfrastructureMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}
