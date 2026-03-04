// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_properties_os_profile_linux_configuration_response.dart';
import 'virtual_machine_instance_properties_os_profile_windows_configuration_response.dart';

/// OsProfile - describes the configuration of the operating system and sets login data
class VirtualMachineInstancePropertiesOsProfileResponse {
  /// AdminUsername - admin username
  final pulumi.Input<String>? adminUsername;

  /// ComputerName - name of the compute
  final pulumi.Input<String>? computerName;

  /// LinuxConfiguration - linux specific configuration values for the virtual machine instance
  final pulumi.Input<
    VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse
  >?
  linuxConfiguration;

  /// Windows Configuration for the virtual machine instance
  final pulumi.Input<
    VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse
  >?
  windowsConfiguration;

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
      'linuxConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse,
            Map<String, dynamic>
          >(linuxConfiguration, (value) => value.toMap()),
      'windowsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse,
            Map<String, dynamic>
          >(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesOsProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineInstancePropertiesOsProfileResponse(
      adminUsername: (() {
        final guardedValue = map['adminUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computerName: (() {
        final guardedValue = map['computerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linuxConfiguration: (() {
        final guardedValue = map['linuxConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineInstancePropertiesOsProfileLinuxConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      windowsConfiguration: (() {
        final guardedValue = map['windowsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineInstancePropertiesOsProfileWindowsConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
