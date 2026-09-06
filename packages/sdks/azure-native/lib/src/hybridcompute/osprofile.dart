// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osprofile_linux_configuration.dart';
import 'osprofile_windows_configuration.dart';

/// Specifies the operating system settings for the hybrid machine.
class OSProfile {
  /// Specifies the linux configuration for update management.
  final pulumi.Input<OSProfileLinuxConfiguration?>? linuxConfiguration;
  /// Specifies the windows configuration for update management.
  final pulumi.Input<OSProfileWindowsConfiguration?>? windowsConfiguration;

  /// Creates a new [OSProfile].
  /// [linuxConfiguration] Specifies the linux configuration for update management.
  /// [windowsConfiguration] Specifies the windows configuration for update management.
  const OSProfile({
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<OSProfileLinuxConfiguration, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<OSProfileWindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory OSProfile.fromMap(Map<String, dynamic> map) {
    return OSProfile(
      linuxConfiguration: (() { final guardedValue = map['linuxConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSProfileLinuxConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsConfiguration: (() { final guardedValue = map['windowsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSProfileWindowsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
