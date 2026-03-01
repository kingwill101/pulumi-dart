// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_properties_response_linux_configuration.dart';
import 'virtual_machine_properties_response_windows_configuration.dart';

/// OsProfile - describes the configuration of the operating system and sets login data
class VirtualMachinePropertiesResponseOsProfile {
  /// AdminUsername - admin username
  final String? adminUsername;
  /// ComputerName - name of the compute
  final String? computerName;
  /// LinuxConfiguration - linux specific configuration values for the virtual machine
  final VirtualMachinePropertiesResponseLinuxConfiguration? linuxConfiguration;
  /// OsType - string specifying whether the OS is Linux or Windows
  final String? osType;
  /// Windows Configuration for the virtual machine
  final VirtualMachinePropertiesResponseWindowsConfiguration? windowsConfiguration;

  /// Creates a new [VirtualMachinePropertiesResponseOsProfile].
  /// [adminUsername] AdminUsername - admin username
  /// [computerName] ComputerName - name of the compute
  /// [linuxConfiguration] LinuxConfiguration - linux specific configuration values for the virtual machine
  /// [osType] OsType - string specifying whether the OS is Linux or Windows
  /// [windowsConfiguration] Windows Configuration for the virtual machine
  VirtualMachinePropertiesResponseOsProfile({
    this.adminUsername,
    this.computerName,
    this.linuxConfiguration,
    this.osType,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'osType': ?osType,
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory VirtualMachinePropertiesResponseOsProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseOsProfile(
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : VirtualMachinePropertiesResponseLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
      windowsConfiguration: map['windowsConfiguration'] == null ? null : VirtualMachinePropertiesResponseWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

