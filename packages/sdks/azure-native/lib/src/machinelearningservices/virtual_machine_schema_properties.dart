// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_ssh_credentials.dart';

class VirtualMachineSchemaProperties {
  /// Public IP address of the virtual machine.
  final String? address;
  /// Admin credentials for virtual machine
  final VirtualMachineSshCredentials? administratorAccount;
  /// Indicates whether this compute will be used for running notebooks.
  final bool? isNotebookInstanceCompute;
  /// Notebook server port open for ssh connections.
  final int? notebookServerPort;
  /// Port open for ssh connections.
  final int? sshPort;
  /// Virtual Machine size
  final String? virtualMachineSize;

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
      'administratorAccount': ?administratorAccount == null ? null : administratorAccount!.toMap(),
      'isNotebookInstanceCompute': ?isNotebookInstanceCompute,
      'notebookServerPort': ?notebookServerPort,
      'sshPort': ?sshPort,
      'virtualMachineSize': ?virtualMachineSize,
    };
  }

  factory VirtualMachineSchemaProperties.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSchemaProperties(
      address: map['address'] == null ? null : map['address'] as String,
      administratorAccount: map['administratorAccount'] == null ? null : VirtualMachineSshCredentials.fromMap((map['administratorAccount'] as Map).cast<String, dynamic>()),
      isNotebookInstanceCompute: map['isNotebookInstanceCompute'] == null ? null : map['isNotebookInstanceCompute'] as bool,
      notebookServerPort: map['notebookServerPort'] == null ? null : map['notebookServerPort'] as int,
      sshPort: map['sshPort'] == null ? null : map['sshPort'] as int,
      virtualMachineSize: map['virtualMachineSize'] == null ? null : map['virtualMachineSize'] as String,
    );
  }
}

