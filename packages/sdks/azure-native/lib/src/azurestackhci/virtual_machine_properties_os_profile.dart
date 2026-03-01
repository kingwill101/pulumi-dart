// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_properties_linux_configuration.dart';
import 'virtual_machine_properties_windows_configuration.dart';

/// OsProfile - describes the configuration of the operating system and sets login data
class VirtualMachinePropertiesOsProfile {
  /// AdminPassword - admin password
  final String? adminPassword;
  /// AdminUsername - admin username
  final String? adminUsername;
  /// ComputerName - name of the compute
  final String? computerName;
  /// LinuxConfiguration - linux specific configuration values for the virtual machine
  final VirtualMachinePropertiesLinuxConfiguration? linuxConfiguration;
  /// OsType - string specifying whether the OS is Linux or Windows
  final String? osType;
  /// Windows Configuration for the virtual machine
  final VirtualMachinePropertiesWindowsConfiguration? windowsConfiguration;

  /// Creates a new [VirtualMachinePropertiesOsProfile].
  /// [adminPassword] AdminPassword - admin password
  /// [adminUsername] AdminUsername - admin username
  /// [computerName] ComputerName - name of the compute
  /// [linuxConfiguration] LinuxConfiguration - linux specific configuration values for the virtual machine
  /// [osType] OsType - string specifying whether the OS is Linux or Windows
  /// [windowsConfiguration] Windows Configuration for the virtual machine
  VirtualMachinePropertiesOsProfile({
    this.adminPassword,
    this.adminUsername,
    this.computerName,
    this.linuxConfiguration,
    this.osType,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'osType': ?osType,
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory VirtualMachinePropertiesOsProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesOsProfile(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : VirtualMachinePropertiesLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
      windowsConfiguration: map['windowsConfiguration'] == null ? null : VirtualMachinePropertiesWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

