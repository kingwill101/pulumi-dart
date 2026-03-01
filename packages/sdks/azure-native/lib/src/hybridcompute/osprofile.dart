// ignore_for_file: unused_element, unnecessary_cast

import 'osprofile_linux_configuration.dart';
import 'osprofile_windows_configuration.dart';

/// Specifies the operating system settings for the hybrid machine.
class OSProfile {
  /// Specifies the linux configuration for update management.
  final OSProfileLinuxConfiguration? linuxConfiguration;
  /// Specifies the windows configuration for update management.
  final OSProfileWindowsConfiguration? windowsConfiguration;

  /// Creates a new [OSProfile].
  /// [linuxConfiguration] Specifies the linux configuration for update management.
  /// [windowsConfiguration] Specifies the windows configuration for update management.
  OSProfile({
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory OSProfile.fromMap(Map<String, dynamic> map) {
    return OSProfile(
      linuxConfiguration: map['linuxConfiguration'] == null ? null : OSProfileLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : OSProfileWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

