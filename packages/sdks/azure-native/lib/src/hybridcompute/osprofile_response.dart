// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osprofile_response_linux_configuration.dart';
import 'osprofile_response_windows_configuration.dart';

/// Specifies the operating system settings for the hybrid machine.
class OSProfileResponse {
  /// Specifies the host OS name of the hybrid machine.
  final pulumi.Input<String> computerName;
  /// Specifies the linux configuration for update management.
  final pulumi.Input<OSProfileResponseLinuxConfiguration>? linuxConfiguration;
  /// Specifies the windows configuration for update management.
  final pulumi.Input<OSProfileResponseWindowsConfiguration>? windowsConfiguration;

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
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<OSProfileResponseLinuxConfiguration, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<OSProfileResponseWindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory OSProfileResponse.fromMap(Map<String, dynamic> map) {
    return OSProfileResponse(
      computerName: (map['computerName'] as String).input(),
      linuxConfiguration: map['linuxConfiguration'] == null ? null : (OSProfileResponseLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>())).input(),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : (OSProfileResponseWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

