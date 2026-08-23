// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration_response.dart';

/// Windows Configuration for the virtual machine instance
class VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse {
  /// Whether to EnableAutomaticUpdates on the machine
  final pulumi.Input<bool>? enableAutomaticUpdates;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  final pulumi.Input<bool>? provisionVMAgent;
  /// Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMConfigAgent;
  /// Specifies the ssh key configuration for Windows OS.
  final pulumi.Input<SshConfigurationResponse>? ssh;
  /// TimeZone for the virtual machine instance
  final pulumi.Input<String>? timeZone;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse].
  /// [enableAutomaticUpdates] Whether to EnableAutomaticUpdates on the machine
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  /// [provisionVMConfigAgent] Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  /// [ssh] Specifies the ssh key configuration for Windows OS.
  /// [timeZone] TimeZone for the virtual machine instance
  const VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse({
    this.enableAutomaticUpdates,
    this.provisionVMAgent,
    this.provisionVMConfigAgent,
    this.ssh,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'provisionVMAgent': ?provisionVMAgent,
      'provisionVMConfigAgent': ?provisionVMConfigAgent,
      'ssh': ?pulumi.Input.mapOptionalInputValue<SshConfigurationResponse, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse(
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVMAgent: (() { final guardedValue = map['provisionVMAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVMConfigAgent: (() { final guardedValue = map['provisionVMConfigAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SshConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
