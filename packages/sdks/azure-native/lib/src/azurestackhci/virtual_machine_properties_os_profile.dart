// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_linux_configuration.dart';
import 'virtual_machine_properties_windows_configuration.dart';

/// OsProfile - describes the configuration of the operating system and sets login data
class VirtualMachinePropertiesOsProfile {
  /// AdminPassword - admin password
  final pulumi.Input<String>? adminPassword;

  /// AdminUsername - admin username
  final pulumi.Input<String>? adminUsername;

  /// ComputerName - name of the compute
  final pulumi.Input<String>? computerName;

  /// LinuxConfiguration - linux specific configuration values for the virtual machine
  final pulumi.Input<VirtualMachinePropertiesLinuxConfiguration>?
  linuxConfiguration;

  /// OsType - string specifying whether the OS is Linux or Windows
  final pulumi.Input<String>? osType;

  /// Windows Configuration for the virtual machine
  final pulumi.Input<VirtualMachinePropertiesWindowsConfiguration>?
  windowsConfiguration;

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
      'linuxConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePropertiesLinuxConfiguration,
            Map<String, dynamic>
          >(linuxConfiguration, (value) => value.toMap()),
      'osType': ?osType,
      'windowsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePropertiesWindowsConfiguration,
            Map<String, dynamic>
          >(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesOsProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesOsProfile(
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
          VirtualMachinePropertiesLinuxConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      windowsConfiguration: (() {
        final guardedValue = map['windowsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePropertiesWindowsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
