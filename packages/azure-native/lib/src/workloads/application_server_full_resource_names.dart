// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_resource_names.dart';

/// The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
class ApplicationServerFullResourceNames {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-App-AvSet.
  final String? availabilitySetName;
  /// The list of virtual machine naming details.
  final List<VirtualMachineResourceNames>? virtualMachines;

  /// Creates a new [ApplicationServerFullResourceNames].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-App-AvSet.
  /// [virtualMachines] The list of virtual machine naming details.
  ApplicationServerFullResourceNames({
    this.availabilitySetName,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'virtualMachines': ?virtualMachines == null ? null : pulumi.Input.encodeList<VirtualMachineResourceNames, Map<String, dynamic>>(virtualMachines!, (value) => value.toMap()),
    };
  }

  factory ApplicationServerFullResourceNames.fromMap(Map<String, dynamic> map) {
    return ApplicationServerFullResourceNames(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<VirtualMachineResourceNames>(map['virtualMachines'], (value) => VirtualMachineResourceNames.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

