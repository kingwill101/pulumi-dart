// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_profile_linux_configuration.dart';
import 'os_profile_windows_configuration.dart';

/// Specifies the operating system settings for the virtual machine.
class OsProfile {
  /// Gets or sets administrator password.
  final pulumi.Input<String>? adminPassword;
  /// Gets or sets administrator username.
  final pulumi.Input<String>? adminUsername;
  /// Gets or sets computer name.
  final pulumi.Input<String>? computerName;
  /// Gets or sets the guestId.
  final pulumi.Input<String>? guestId;
  /// Specifies the linux configuration for update management.
  final pulumi.Input<OsProfileLinuxConfiguration>? linuxConfiguration;
  /// Gets or sets the type of the os.
  final pulumi.Input<String>? osType;
  /// Specifies the windows configuration for update management.
  final pulumi.Input<OsProfileWindowsConfiguration>? windowsConfiguration;

  /// Creates a new [OsProfile].
  /// [adminPassword] Gets or sets administrator password.
  /// [adminUsername] Gets or sets administrator username.
  /// [computerName] Gets or sets computer name.
  /// [guestId] Gets or sets the guestId.
  /// [linuxConfiguration] Specifies the linux configuration for update management.
  /// [osType] Gets or sets the type of the os.
  /// [windowsConfiguration] Specifies the windows configuration for update management.
  OsProfile({
    this.adminPassword,
    this.adminUsername,
    this.computerName,
    this.guestId,
    this.linuxConfiguration,
    this.osType,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'guestId': ?guestId,
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<OsProfileLinuxConfiguration, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'osType': ?osType,
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<OsProfileWindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword']! as String).input(),
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername']! as String).input(),
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      guestId: map['guestId'] == null ? null : (map['guestId']! as String).input(),
      linuxConfiguration: map['linuxConfiguration'] == null ? null : (OsProfileLinuxConfiguration.fromMap((map['linuxConfiguration']! as Map).cast<String, dynamic>())).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : (OsProfileWindowsConfiguration.fromMap((map['windowsConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

