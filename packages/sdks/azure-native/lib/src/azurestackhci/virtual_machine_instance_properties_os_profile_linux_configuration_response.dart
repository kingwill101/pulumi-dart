// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration_response.dart';

/// LinuxConfiguration - linux specific configuration values for the virtual machine instance
class VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse {
  /// DisablePasswordAuthentication - whether password authentication should be disabled
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  final pulumi.Input<bool>? provisionVMAgent;
  /// Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMConfigAgent;
  /// Specifies the ssh key configuration for a Linux OS.
  final pulumi.Input<SshConfigurationResponse>? ssh;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse].
  /// [disablePasswordAuthentication] DisablePasswordAuthentication - whether password authentication should be disabled
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  /// [provisionVMConfigAgent] Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse({
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
      'ssh': ?pulumi.Input.mapOptionalInputValue<SshConfigurationResponse, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse(
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : (map['disablePasswordAuthentication']! as bool).input(),
      provisionVMAgent: map['provisionVMAgent'] == null ? null : (map['provisionVMAgent']! as bool).input(),
      provisionVMConfigAgent: map['provisionVMConfigAgent'] == null ? null : (map['provisionVMConfigAgent']! as bool).input(),
      ssh: map['ssh'] == null ? null : (SshConfigurationResponse.fromMap((map['ssh']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

