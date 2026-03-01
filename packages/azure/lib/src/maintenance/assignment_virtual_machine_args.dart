// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_assignment_virtual_machine_assignment_virtual_machine_args_doc}
/// The set of arguments for AssignmentVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_maintenance_assignment_virtual_machine_assignment_virtual_machine_args_doc}
class AssignmentVirtualMachineArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> maintenanceConfigurationId;
  /// Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [AssignmentVirtualMachineArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  /// [virtualMachineId] Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  AssignmentVirtualMachineArgs({
    String? location,
    required String maintenanceConfigurationId,
    required String virtualMachineId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asInput<String>(maintenanceConfigurationId),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'maintenanceConfigurationId': maintenanceConfigurationId,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory AssignmentVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentVirtualMachineArgs(
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceConfigurationId: map['maintenanceConfigurationId'] as String,
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}

