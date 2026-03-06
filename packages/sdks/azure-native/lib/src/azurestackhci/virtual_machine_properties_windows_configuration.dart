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
  const VirtualMachinePropertiesWindowsConfiguration({
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
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVMAgent: (() { final guardedValue = map['provisionVMAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePropertiesSshSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

