// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_application_server_virtual_machine_data_disk.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine {
  /// One or more `data_disk` blocks as defined below. Changing this forces a new resource to be created.
  final List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk>? dataDisks;
  /// The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  final String? hostName;
  /// A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  final List<String>? networkInterfaceNames;
  /// The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  final String? osDiskName;
  /// The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  final String? virtualMachineName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine].
  /// [dataDisks] One or more `data_disk` blocks as defined below. Changing this forces a new resource to be created.
  /// [hostName] The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceNames] A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  /// [osDiskName] The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  /// [virtualMachineName] The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine({
    this.dataDisks,
    this.hostName,
    this.networkInterfaceNames,
    this.osDiskName,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'hostName': ?hostName,
      'networkInterfaceNames': ?networkInterfaceNames,
      'osDiskName': ?osDiskName,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk>(map['dataDisks'], (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      networkInterfaceNames: map['networkInterfaceNames'] == null ? null : (map['networkInterfaceNames'] as List).cast<String>(),
      osDiskName: map['osDiskName'] == null ? null : map['osDiskName'] as String,
      virtualMachineName: map['virtualMachineName'] == null ? null : map['virtualMachineName'] as String,
    );
  }
}

