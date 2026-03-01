// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_properties_response_ssh.dart';

/// LinuxConfiguration - linux specific configuration values for the virtual machine
class VirtualMachinePropertiesResponseLinuxConfiguration {
  /// DisablePasswordAuthentication - whether password authentication should be disabled
  final bool? disablePasswordAuthentication;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  final bool? provisionVMAgent;
  /// SSH - contains settings related to ssh configuration
  final VirtualMachinePropertiesResponseSsh? ssh;

  /// Creates a new [VirtualMachinePropertiesResponseLinuxConfiguration].
  /// [disablePasswordAuthentication] DisablePasswordAuthentication - whether password authentication should be disabled
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  /// [ssh] SSH - contains settings related to ssh configuration
  VirtualMachinePropertiesResponseLinuxConfiguration({
    this.disablePasswordAuthentication,
    this.provisionVMAgent,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'provisionVMAgent': ?provisionVMAgent,
      'ssh': ?ssh == null ? null : ssh!.toMap(),
    };
  }

  factory VirtualMachinePropertiesResponseLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseLinuxConfiguration(
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : map['disablePasswordAuthentication'] as bool,
      provisionVMAgent: map['provisionVMAgent'] == null ? null : map['provisionVMAgent'] as bool,
      ssh: map['ssh'] == null ? null : VirtualMachinePropertiesResponseSsh.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
    );
  }
}

