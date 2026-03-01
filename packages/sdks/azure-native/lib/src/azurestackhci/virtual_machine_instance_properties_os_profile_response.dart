// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_instance_properties_os_profile_linux_configuration_response.dart';
import 'virtual_machine_instance_properties_os_profile_windows_configuration_response.dart';

/// OsProfile - describes the configuration of the operating system and sets login data
class VirtualMachineInstancePropertiesOsProfileResponse {
  /// AdminUsername - admin username
  final String? adminUsername;
  /// ComputerName - name of the compute
  final String? computerName;
  /// LinuxConfiguration - linux specific configuration values for the virtual machine instance
  final VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse? linuxConfiguration;
  /// Windows Configuration for the virtual machine instance
  final VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse? windowsConfiguration;

  /// Creates a new [VirtualMachineInstancePropertiesOsProfileResponse].
  /// [adminUsername] AdminUsername - admin username
  /// [computerName] ComputerName - name of the compute
  /// [linuxConfiguration] LinuxConfiguration - linux specific configuration values for the virtual machine instance
  /// [windowsConfiguration] Windows Configuration for the virtual machine instance
  VirtualMachineInstancePropertiesOsProfileResponse({
    this.adminUsername,
    this.computerName,
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesOsProfileResponse(
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

