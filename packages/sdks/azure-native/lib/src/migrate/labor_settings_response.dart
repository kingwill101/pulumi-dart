// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Labour settings.
class LaborSettingsResponse {
  /// Hourly administrator cost.
  final pulumi.Input<double> hourlyAdminCost;
  /// Physical servers per administrator.
  final pulumi.Input<int> physicalServersPerAdmin;
  /// Virtual machines per administrator.
  final pulumi.Input<int> virtualMachinesPerAdmin;

  /// Creates a new [LaborSettingsResponse].
  /// [hourlyAdminCost] Hourly administrator cost.
  /// [physicalServersPerAdmin] Physical servers per administrator.
  /// [virtualMachinesPerAdmin] Virtual machines per administrator.
  LaborSettingsResponse({
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

  factory LaborSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LaborSettingsResponse(
      hourlyAdminCost: (map['hourlyAdminCost'] as double).input(),
      physicalServersPerAdmin: (map['physicalServersPerAdmin'] as int).input(),
      virtualMachinesPerAdmin: (map['virtualMachinesPerAdmin'] as int).input(),
    );
  }
}

