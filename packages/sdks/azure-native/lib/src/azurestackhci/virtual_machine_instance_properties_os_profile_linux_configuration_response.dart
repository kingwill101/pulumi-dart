// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration_response.dart';

/// LinuxConfiguration - linux specific configuration values for the virtual machine instance
class VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse {
  /// DisablePasswordAuthentication - whether password authentication should be disabled
  final pulumi.Input<bool?>? disablePasswordAuthentication;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  final pulumi.Input<bool?>? provisionVMAgent;
  /// Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  final pulumi.Input<bool?>? provisionVMConfigAgent;
  /// Specifies the ssh key configuration for a Linux OS.
  final pulumi.Input<SshConfigurationResponse?>? ssh;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse].
  /// [disablePasswordAuthentication] DisablePasswordAuthentication - whether password authentication should be disabled
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  /// [provisionVMConfigAgent] Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse({
    this.disablePasswordAuthentication,
    pulumi.Input<bool?>? provisionVMAgent,
    pulumi.Input<bool?>? provisionVMConfigAgent,
    this.ssh,
  }) : provisionVMAgent = provisionVMAgent ?? pulumi.Input.fromValue(true), provisionVMConfigAgent = provisionVMConfigAgent ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'provisionVMAgent': ?provisionVMAgent,
      'provisionVMConfigAgent': ?provisionVMConfigAgent,
      'ssh': ?pulumi.Input.mapOptionalInputValue<SshConfigurationResponse, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse(
      disablePasswordAuthentication: (() { final guardedValue = map['disablePasswordAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVMAgent: (() { final guardedValue = map['provisionVMAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVMConfigAgent: (() { final guardedValue = map['provisionVMConfigAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SshConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
