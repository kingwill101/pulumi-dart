// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Labour settings.
class LaborSettings {
  /// Hourly administrator cost.
  final pulumi.Input<double> hourlyAdminCost;
  /// Physical servers per administrator.
  final pulumi.Input<int> physicalServersPerAdmin;
  /// Virtual machines per administrator.
  final pulumi.Input<int> virtualMachinesPerAdmin;

  /// Creates a new [LaborSettings].
  /// [hourlyAdminCost] Hourly administrator cost.
  /// [physicalServersPerAdmin] Physical servers per administrator.
  /// [virtualMachinesPerAdmin] Virtual machines per administrator.
  const LaborSettings({
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
      hourlyAdminCost: pulumi.Input.fromValue((map['hourlyAdminCost'] as num).toDouble()),
      physicalServersPerAdmin: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['physicalServersPerAdmin'])),
      virtualMachinesPerAdmin: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['virtualMachinesPerAdmin'])),
    );
  }
}
