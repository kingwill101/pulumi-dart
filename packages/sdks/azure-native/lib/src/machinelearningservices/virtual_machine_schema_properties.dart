// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_ssh_credentials.dart';

class VirtualMachineSchemaProperties {
  /// Public IP address of the virtual machine.
  final pulumi.Input<String>? address;
  /// Admin credentials for virtual machine
  final pulumi.Input<VirtualMachineSshCredentials>? administratorAccount;
  /// Indicates whether this compute will be used for running notebooks.
  final pulumi.Input<bool>? isNotebookInstanceCompute;
  /// Notebook server port open for ssh connections.
  final pulumi.Input<int>? notebookServerPort;
  /// Port open for ssh connections.
  final pulumi.Input<int>? sshPort;
  /// Virtual Machine size
  final pulumi.Input<String>? virtualMachineSize;

  /// Creates a new [VirtualMachineSchemaProperties].
  /// [address] Public IP address of the virtual machine.
  /// [administratorAccount] Admin credentials for virtual machine
  /// [isNotebookInstanceCompute] Indicates whether this compute will be used for running notebooks.
  /// [notebookServerPort] Notebook server port open for ssh connections.
  /// [sshPort] Port open for ssh connections.
  /// [virtualMachineSize] Virtual Machine size
  VirtualMachineSchemaProperties({
    this.address,
    this.administratorAccount,
    this.isNotebookInstanceCompute,
    this.notebookServerPort,
    this.sshPort,
    this.virtualMachineSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'administratorAccount': ?pulumi.Input.mapOptionalInputValue<VirtualMachineSshCredentials, Map<String, dynamic>>(administratorAccount, (value) => value.toMap()),
      'isNotebookInstanceCompute': ?isNotebookInstanceCompute,
      'notebookServerPort': ?notebookServerPort,
      'sshPort': ?sshPort,
      'virtualMachineSize': ?virtualMachineSize,
    };
  }

  factory VirtualMachineSchemaProperties.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSchemaProperties(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      administratorAccount: map['administratorAccount'] == null ? null : (VirtualMachineSshCredentials.fromMap((map['administratorAccount'] as Map).cast<String, dynamic>())).input(),
      isNotebookInstanceCompute: map['isNotebookInstanceCompute'] == null ? null : (map['isNotebookInstanceCompute'] as bool).input(),
      notebookServerPort: map['notebookServerPort'] == null ? null : (map['notebookServerPort'] as int).input(),
      sshPort: map['sshPort'] == null ? null : (map['sshPort'] as int).input(),
      virtualMachineSize: map['virtualMachineSize'] == null ? null : (map['virtualMachineSize'] as String).input(),
    );
  }
}

