// ignore_for_file: unused_element, unnecessary_cast

import 'osprofile_response_linux_configuration.dart';
import 'osprofile_response_windows_configuration.dart';

/// Specifies the operating system settings for the hybrid machine.
class OSProfileResponse {
  /// Specifies the host OS name of the hybrid machine.
  final String computerName;
  /// Specifies the linux configuration for update management.
  final OSProfileResponseLinuxConfiguration? linuxConfiguration;
  /// Specifies the windows configuration for update management.
  final OSProfileResponseWindowsConfiguration? windowsConfiguration;

  /// Creates a new [OSProfileResponse].
  /// [computerName] Specifies the host OS name of the hybrid machine.
  /// [linuxConfiguration] Specifies the linux configuration for update management.
  /// [windowsConfiguration] Specifies the windows configuration for update management.
  OSProfileResponse({
    required this.computerName,
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': computerName,
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory OSProfileResponse.fromMap(Map<String, dynamic> map) {
    return OSProfileResponse(
      computerName: map['computerName'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : OSProfileResponseLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : OSProfileResponseWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

