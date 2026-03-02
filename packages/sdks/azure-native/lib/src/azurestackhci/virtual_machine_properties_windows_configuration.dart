// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_ssh_ssh.dart';

/// Windows Configuration for the virtual machine
class VirtualMachinePropertiesWindowsConfiguration {
  /// Whether to EnableAutomaticUpdates on the machine
  final pulumi.Input<bool>? enableAutomaticUpdates;
  /// Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  final pulumi.Input<bool>? provisionVMAgent;
  /// SSH Configuration
  final pulumi.Input<VirtualMachinePropertiesSshSsh>? ssh;
  /// TimeZone for the virtual machine
  final pulumi.Input<String>? timeZone;

  /// Creates a new [VirtualMachinePropertiesWindowsConfiguration].
  /// [enableAutomaticUpdates] Whether to EnableAutomaticUpdates on the machine
  /// [provisionVMAgent] Used to indicate whether Arc for Servers agent onboarding should be triggered during the virtual machine creation process.
  /// [ssh] SSH Configuration
  /// [timeZone] TimeZone for the virtual machine
  VirtualMachinePropertiesWindowsConfiguration({
    this.enableAutomaticUpdates,
    this.provisionVMAgent,
    this.ssh,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'provisionVMAgent': ?provisionVMAgent,
      'ssh': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesSshSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory VirtualMachinePropertiesWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesWindowsConfiguration(
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : (map['enableAutomaticUpdates']! as bool).input(),
      provisionVMAgent: map['provisionVMAgent'] == null ? null : (map['provisionVMAgent']! as bool).input(),
      ssh: map['ssh'] == null ? null : (VirtualMachinePropertiesSshSsh.fromMap((map['ssh']! as Map).cast<String, dynamic>())).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

