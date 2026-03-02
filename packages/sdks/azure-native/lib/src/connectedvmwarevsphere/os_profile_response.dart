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
  OsProfileResponse({
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
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername']! as String).input(),
      allowExtensionOperations: (map['allowExtensionOperations'] as bool).input(),
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      guestId: map['guestId'] == null ? null : (map['guestId']! as String).input(),
      linuxConfiguration: map['linuxConfiguration'] == null ? null : (OsProfileResponseLinuxConfiguration.fromMap((map['linuxConfiguration']! as Map).cast<String, dynamic>())).input(),
      osName: (map['osName'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      toolsRunningStatus: (map['toolsRunningStatus'] as String).input(),
      toolsVersion: (map['toolsVersion'] as String).input(),
      toolsVersionStatus: (map['toolsVersionStatus'] as String).input(),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : (OsProfileResponseWindowsConfiguration.fromMap((map['windowsConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

