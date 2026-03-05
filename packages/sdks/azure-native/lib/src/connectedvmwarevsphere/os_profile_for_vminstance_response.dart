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
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestId: (() { final guardedValue = map['guestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osSku: pulumi.Input.fromValue(map['osSku'] as String),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsRunningStatus: pulumi.Input.fromValue(map['toolsRunningStatus'] as String),
      toolsVersion: pulumi.Input.fromValue(map['toolsVersion'] as String),
      toolsVersionStatus: pulumi.Input.fromValue(map['toolsVersionStatus'] as String),
      windowsConfiguration: (() { final guardedValue = map['windowsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

