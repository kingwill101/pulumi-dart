// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_ssh.dart';

/// LinuxConfiguration - linux specific configuration values for the virtual machine
class VirtualMachinePropertiesResponseLinuxConfiguration {
  /// DisablePasswordAuthentication - whether password authentication should be disabled
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMAgent;
  /// SSH - contains settings related to ssh configuration
  final pulumi.Input<VirtualMachinePropertiesResponseSsh>? ssh;

  /// Creates a new [VirtualMachinePropertiesResponseLinuxConfiguration].
  /// [disablePasswordAuthentication] DisablePasswordAuthentication - whether password authentication should be disabled
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  /// [ssh] SSH - contains settings related to ssh configuration
  const VirtualMachinePropertiesResponseLinuxConfiguration({
    this.disablePasswordAuthentication,
    this.provisionVMAgent,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'provisionVMAgent': ?provisionVMAgent,
      'ssh': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesResponseSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesResponseLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseLinuxConfiguration(
      disablePasswordAuthentication: (() { final guardedValue = map['disablePasswordAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVMAgent: (() { final guardedValue = map['provisionVMAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePropertiesResponseSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
