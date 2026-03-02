// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_configuration_response.dart';

/// Specifies the operating system settings for the virtual machine.
class OsProfileForVMInstanceResponse {
  /// Gets or sets administrator username.
  final pulumi.Input<String>? adminUsername;
  /// Gets or sets computer name.
  final pulumi.Input<String>? computerName;
  /// Gets or sets the guestId.
  final pulumi.Input<String>? guestId;
  /// Gets or sets os sku.
  final pulumi.Input<String> osSku;
  /// Gets or sets the type of the os.
  final pulumi.Input<String>? osType;
  /// Gets or sets the current running status of VMware Tools running in the guest operating system.
  final pulumi.Input<String> toolsRunningStatus;
  /// Gets or sets the current version of VMware Tools.
  final pulumi.Input<String> toolsVersion;
  /// Gets or sets the current version status of VMware Tools installed in the guest operating system.
  final pulumi.Input<String> toolsVersionStatus;
  /// Windows Configuration.
  final pulumi.Input<WindowsConfigurationResponse>? windowsConfiguration;

  /// Creates a new [OsProfileForVMInstanceResponse].
  /// [adminUsername] Gets or sets administrator username.
  /// [computerName] Gets or sets computer name.
  /// [guestId] Gets or sets the guestId.
  /// [osSku] Gets or sets os sku.
  /// [osType] Gets or sets the type of the os.
  /// [toolsRunningStatus] Gets or sets the current running status of VMware Tools running in the guest operating system.
  /// [toolsVersion] Gets or sets the current version of VMware Tools.
  /// [toolsVersionStatus] Gets or sets the current version status of VMware Tools installed in the guest operating system.
  /// [windowsConfiguration] Windows Configuration.
  OsProfileForVMInstanceResponse({
    this.adminUsername,
    this.computerName,
    this.guestId,
    required this.osSku,
    this.osType,
    required this.toolsRunningStatus,
    required this.toolsVersion,
    required this.toolsVersionStatus,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'guestId': ?guestId,
      'osSku': osSku,
      'osType': ?osType,
      'toolsRunningStatus': toolsRunningStatus,
      'toolsVersion': toolsVersion,
      'toolsVersionStatus': toolsVersionStatus,
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsConfigurationResponse, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory OsProfileForVMInstanceResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileForVMInstanceResponse(
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername']! as String).input(),
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      guestId: map['guestId'] == null ? null : (map['guestId']! as String).input(),
      osSku: (map['osSku'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      toolsRunningStatus: (map['toolsRunningStatus'] as String).input(),
      toolsVersion: (map['toolsVersion'] as String).input(),
      toolsVersionStatus: (map['toolsVersionStatus'] as String).input(),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : (WindowsConfigurationResponse.fromMap((map['windowsConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

