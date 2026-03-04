// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_ssh_credentials_response.dart';

class VirtualMachineSchemaResponseProperties {
  /// Public IP address of the virtual machine.
  final pulumi.Input<String>? address;

  /// Admin credentials for virtual machine
  final pulumi.Input<VirtualMachineSshCredentialsResponse>?
  administratorAccount;

  /// Indicates whether this compute will be used for running notebooks.
  final pulumi.Input<bool>? isNotebookInstanceCompute;

  /// Notebook server port open for ssh connections.
  final pulumi.Input<int>? notebookServerPort;

  /// Port open for ssh connections.
  final pulumi.Input<int>? sshPort;

  /// Virtual Machine size
  final pulumi.Input<String>? virtualMachineSize;

  /// Creates a new [VirtualMachineSchemaResponseProperties].
  /// [address] Public IP address of the virtual machine.
  /// [administratorAccount] Admin credentials for virtual machine
  /// [isNotebookInstanceCompute] Indicates whether this compute will be used for running notebooks.
  /// [notebookServerPort] Notebook server port open for ssh connections.
  /// [sshPort] Port open for ssh connections.
  /// [virtualMachineSize] Virtual Machine size
  VirtualMachineSchemaResponseProperties({
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
      'administratorAccount':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineSshCredentialsResponse,
            Map<String, dynamic>
          >(administratorAccount, (value) => value.toMap()),
      'isNotebookInstanceCompute': ?isNotebookInstanceCompute,
      'notebookServerPort': ?notebookServerPort,
      'sshPort': ?sshPort,
      'virtualMachineSize': ?virtualMachineSize,
    };
  }

  factory VirtualMachineSchemaResponseProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineSchemaResponseProperties(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      administratorAccount: (() {
        final guardedValue = map['administratorAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineSshCredentialsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isNotebookInstanceCompute: (() {
        final guardedValue = map['isNotebookInstanceCompute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      notebookServerPort: (() {
        final guardedValue = map['notebookServerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sshPort: (() {
        final guardedValue = map['sshPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      virtualMachineSize: (() {
        final guardedValue = map['virtualMachineSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
