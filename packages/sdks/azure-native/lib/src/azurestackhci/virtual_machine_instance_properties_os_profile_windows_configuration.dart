// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration.dart';

/// Windows Configuration for the virtual machine instance
class VirtualMachineInstancePropertiesOsProfileWindowsConfiguration {
  /// Whether to EnableAutomaticUpdates on the machine
  final pulumi.Input<bool>? enableAutomaticUpdates;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine instance creation process.
  final pulumi.Input<bool>? provisionVMAgent;
  /// Used to indicate whether the VM Config Agent should be installed during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMConfigAgent;
  /// Specifies the ssh key configuration for Windows OS.
  final pulumi.Input<SshConfiguration>? ssh;
  /// TimeZone for the virtual machine instance
  final pulumi.Input<String>? timeZone;

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
      'ssh': ?pulumi.Input.mapOptionalInputValue<SshConfiguration, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfileWindowsConfiguration(
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : (map['enableAutomaticUpdates']! as bool).input(),
      provisionVMAgent: map['provisionVMAgent'] == null ? null : (map['provisionVMAgent']! as bool).input(),
      provisionVMConfigAgent: map['provisionVMConfigAgent'] == null ? null : (map['provisionVMConfigAgent']! as bool).input(),
      ssh: map['ssh'] == null ? null : (SshConfiguration.fromMap((map['ssh']! as Map).cast<String, dynamic>())).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

