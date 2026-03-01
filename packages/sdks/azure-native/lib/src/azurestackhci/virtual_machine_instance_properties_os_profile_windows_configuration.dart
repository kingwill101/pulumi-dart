// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_configuration.dart';

/// Windows Configuration for the virtual machine instance
class VirtualMachineInstancePropertiesOsProfileWindowsConfiguration {
  /// Whether to EnableAutomaticUpdates on the machine
  final bool? enableAutomaticUpdates;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  final bool? provisionVMAgent;
  /// Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  final bool? provisionVMConfigAgent;
  /// Specifies the ssh key configuration for Windows OS.
  final SshConfiguration? ssh;
  /// TimeZone for the virtual machine instance
  final String? timeZone;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfileWindowsConfiguration].
  /// [enableAutomaticUpdates] Whether to EnableAutomaticUpdates on the machine
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  /// [provisionVMConfigAgent] Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  /// [ssh] Specifies the ssh key configuration for Windows OS.
  /// [timeZone] TimeZone for the virtual machine instance
  VirtualMachineInstancePropertiesOsProfileWindowsConfiguration({
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
      'ssh': ?ssh == null ? null : ssh!.toMap(),
      'timeZone': ?timeZone,
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfileWindowsConfiguration(
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : map['enableAutomaticUpdates'] as bool,
      provisionVMAgent: map['provisionVMAgent'] == null ? null : map['provisionVMAgent'] as bool,
      provisionVMConfigAgent: map['provisionVMConfigAgent'] == null ? null : map['provisionVMConfigAgent'] as bool,
      ssh: map['ssh'] == null ? null : SshConfiguration.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

