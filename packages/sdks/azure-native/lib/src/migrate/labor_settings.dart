// ignore_for_file: unused_element, unnecessary_cast


/// Labour settings.
class LaborSettings {
  /// Hourly administrator cost.
  final double hourlyAdminCost;
  /// Physical servers per administrator.
  final int physicalServersPerAdmin;
  /// Virtual machines per administrator.
  final int virtualMachinesPerAdmin;

  /// Creates a new [LaborSettings].
  /// [hourlyAdminCost] Hourly administrator cost.
  /// [physicalServersPerAdmin] Physical servers per administrator.
  /// [virtualMachinesPerAdmin] Virtual machines per administrator.
  LaborSettings({
    required this.hourlyAdminCost,
    required this.physicalServersPerAdmin,
    required this.virtualMachinesPerAdmin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourlyAdminCost': hourlyAdminCost,
      'physicalServersPerAdmin': physicalServersPerAdmin,
      'virtualMachinesPerAdmin': virtualMachinesPerAdmin,
    };
  }

  factory LaborSettings.fromMap(Map<String, dynamic> map) {
    return LaborSettings(
      hourlyAdminCost: map['hourlyAdminCost'] as double,
      physicalServersPerAdmin: map['physicalServersPerAdmin'] as int,
      virtualMachinesPerAdmin: map['virtualMachinesPerAdmin'] as int,
    );
  }
}

