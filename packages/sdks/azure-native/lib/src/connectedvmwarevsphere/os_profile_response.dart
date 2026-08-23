// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_profile_response_linux_configuration.dart';
import 'os_profile_response_windows_configuration.dart';

/// Specifies the operating system settings for the virtual machine.
class OsProfileResponse {
  /// Gets or sets administrator username.
  final pulumi.Input<String>? adminUsername;
  /// Gets or sets a value indicating whether the VM is ready for extension operations.
  final pulumi.Input<bool> allowExtensionOperations;
  /// Gets or sets computer name.
  final pulumi.Input<String>? computerName;
  /// Gets or sets the guestId.
  final pulumi.Input<String>? guestId;
  /// Specifies the linux configuration for update management.
  final pulumi.Input<OsProfileResponseLinuxConfiguration>? linuxConfiguration;
  /// Gets or sets os name.
  final pulumi.Input<String> osName;
  /// Gets or sets the type of the os.
  final pulumi.Input<String>? osType;
  /// Gets or sets the current running status of VMware Tools running in the guest operating system.
  final pulumi.Input<String> toolsRunningStatus;
  /// Gets or sets the current version of VMware Tools.
  final pulumi.Input<String> toolsVersion;
  /// Gets or sets the current version status of VMware Tools installed in the guest operating system.
  final pulumi.Input<String> toolsVersionStatus;
  /// Specifies the windows configuration for update management.
  final pulumi.Input<OsProfileResponseWindowsConfiguration>? windowsConfiguration;

  /// Creates a new [OsProfileResponse].
  /// [adminUsername] Gets or sets administrator username.
  /// [allowExtensionOperations] Gets or sets a value indicating whether the VM is ready for extension operations.
  /// [computerName] Gets or sets computer name.
  /// [guestId] Gets or sets the guestId.
  /// [linuxConfiguration] Specifies the linux configuration for update management.
  /// [osName] Gets or sets os name.
  /// [osType] Gets or sets the type of the os.
  /// [toolsRunningStatus] Gets or sets the current running status of VMware Tools running in the guest operating system.
  /// [toolsVersion] Gets or sets the current version of VMware Tools.
  /// [toolsVersionStatus] Gets or sets the current version status of VMware Tools installed in the guest operating system.
  /// [windowsConfiguration] Specifies the windows configuration for update management.
  const OsProfileResponse({
    this.adminUsername,
    required this.allowExtensionOperations,
    this.computerName,
    this.guestId,
    this.linuxConfiguration,
    required this.osName,
    this.osType,
    required this.toolsRunningStatus,
    required this.toolsVersion,
    required this.toolsVersionStatus,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'allowExtensionOperations': allowExtensionOperations,
      'computerName': ?computerName,
      'guestId': ?guestId,
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<OsProfileResponseLinuxConfiguration, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'osName': osName,
      'osType': ?osType,
      'toolsRunningStatus': toolsRunningStatus,
      'toolsVersion': toolsVersion,
      'toolsVersionStatus': toolsVersionStatus,
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<OsProfileResponseWindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowExtensionOperations: pulumi.Input.fromValue(map['allowExtensionOperations'] as bool),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestId: (() { final guardedValue = map['guestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxConfiguration: (() { final guardedValue = map['linuxConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfileResponseLinuxConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osName: pulumi.Input.fromValue(map['osName'] as String),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsRunningStatus: pulumi.Input.fromValue(map['toolsRunningStatus'] as String),
      toolsVersion: pulumi.Input.fromValue(map['toolsVersion'] as String),
      toolsVersionStatus: pulumi.Input.fromValue(map['toolsVersionStatus'] as String),
      windowsConfiguration: (() { final guardedValue = map['windowsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfileResponseWindowsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
