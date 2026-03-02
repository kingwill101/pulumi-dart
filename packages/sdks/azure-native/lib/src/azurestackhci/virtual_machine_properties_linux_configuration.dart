// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_ssh.dart';

/// LinuxConfiguration - linux specific configuration values for the virtual machine
class VirtualMachinePropertiesLinuxConfiguration {
  /// DisablePasswordAuthentication - whether password authentication should be disabled
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMAgent;
  /// SSH - contains settings related to ssh configuration
  final pulumi.Input<VirtualMachinePropertiesSsh>? ssh;

  /// Creates a new [VirtualMachinePropertiesLinuxConfiguration].
  /// [disablePasswordAuthentication] DisablePasswordAuthentication - whether password authentication should be disabled
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  /// [ssh] SSH - contains settings related to ssh configuration
  VirtualMachinePropertiesLinuxConfiguration({
    this.disablePasswordAuthentication,
    this.provisionVMAgent,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'provisionVMAgent': ?provisionVMAgent,
      'ssh': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesLinuxConfiguration(
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : (map['disablePasswordAuthentication'] as bool).input(),
      provisionVMAgent: map['provisionVMAgent'] == null ? null : (map['provisionVMAgent'] as bool).input(),
      ssh: map['ssh'] == null ? null : (VirtualMachinePropertiesSsh.fromMap((map['ssh'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

