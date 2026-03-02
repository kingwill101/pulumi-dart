// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_properties_os_profile_linux_configuration.dart';
import 'virtual_machine_instance_properties_os_profile_windows_configuration.dart';

/// OsProfile - describes the configuration of the operating system and sets login data
class VirtualMachineInstancePropertiesOsProfile {
  /// AdminPassword - admin password
  final pulumi.Input<String>? adminPassword;
  /// AdminUsername - admin username
  final pulumi.Input<String>? adminUsername;
  /// ComputerName - name of the compute
  final pulumi.Input<String>? computerName;
  /// LinuxConfiguration - linux specific configuration values for the virtual machine instance
  final pulumi.Input<VirtualMachineInstancePropertiesOsProfileLinuxConfiguration>? linuxConfiguration;
  /// Windows Configuration for the virtual machine instance
  final pulumi.Input<VirtualMachineInstancePropertiesOsProfileWindowsConfiguration>? windowsConfiguration;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfile].
  /// [adminPassword] AdminPassword - admin password
  /// [adminUsername] AdminUsername - admin username
  /// [computerName] ComputerName - name of the compute
  /// [linuxConfiguration] LinuxConfiguration - linux specific configuration values for the virtual machine instance
  /// [windowsConfiguration] Windows Configuration for the virtual machine instance
  VirtualMachineInstancePropertiesOsProfile({
    this.adminPassword,
    this.adminUsername,
    this.computerName,
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesOsProfileLinuxConfiguration, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesOsProfileWindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesOsProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfile(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword']! as String).input(),
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername']! as String).input(),
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      linuxConfiguration: map['linuxConfiguration'] == null ? null : (VirtualMachineInstancePropertiesOsProfileLinuxConfiguration.fromMap((map['linuxConfiguration']! as Map).cast<String, dynamic>())).input(),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : (VirtualMachineInstancePropertiesOsProfileWindowsConfiguration.fromMap((map['windowsConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

