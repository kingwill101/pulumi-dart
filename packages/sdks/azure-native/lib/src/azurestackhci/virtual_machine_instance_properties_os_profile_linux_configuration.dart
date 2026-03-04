// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration.dart';

/// LinuxConfiguration - linux specific configuration values for the virtual machine instance
class VirtualMachineInstancePropertiesOsProfileLinuxConfiguration {
  /// DisablePasswordAuthentication - whether password authentication should be disabled
  final pulumi.Input<bool>? disablePasswordAuthentication;

  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  final pulumi.Input<bool>? provisionVMAgent;

  /// Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMConfigAgent;

  /// Specifies the ssh key configuration for a Linux OS.
  final pulumi.Input<SshConfiguration>? ssh;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfileLinuxConfiguration].
  /// [disablePasswordAuthentication] DisablePasswordAuthentication - whether password authentication should be disabled
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  /// [provisionVMConfigAgent] Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  VirtualMachineInstancePropertiesOsProfileLinuxConfiguration({
    this.disablePasswordAuthentication,
    this.provisionVMAgent,
    this.provisionVMConfigAgent,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'provisionVMAgent': ?provisionVMAgent,
      'provisionVMConfigAgent': ?provisionVMConfigAgent,
      'ssh':
          ?pulumi.Input.mapOptionalInputValue<
            SshConfiguration,
            Map<String, dynamic>
          >(ssh, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileLinuxConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineInstancePropertiesOsProfileLinuxConfiguration(
      disablePasswordAuthentication: (() {
        final guardedValue = map['disablePasswordAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      provisionVMAgent: (() {
        final guardedValue = map['provisionVMAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      provisionVMConfigAgent: (() {
        final guardedValue = map['provisionVMConfigAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ssh: (() {
        final guardedValue = map['ssh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SshConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
