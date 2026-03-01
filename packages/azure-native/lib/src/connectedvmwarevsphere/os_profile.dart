// ignore_for_file: unused_element, unnecessary_cast

import 'os_profile_linux_configuration.dart';
import 'os_profile_windows_configuration.dart';

/// Specifies the operating system settings for the virtual machine.
class OsProfile {
  /// Gets or sets administrator password.
  final String? adminPassword;
  /// Gets or sets administrator username.
  final String? adminUsername;
  /// Gets or sets computer name.
  final String? computerName;
  /// Gets or sets the guestId.
  final String? guestId;
  /// Specifies the linux configuration for update management.
  final OsProfileLinuxConfiguration? linuxConfiguration;
  /// Gets or sets the type of the os.
  final String? osType;
  /// Specifies the windows configuration for update management.
  final OsProfileWindowsConfiguration? windowsConfiguration;

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
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'osType': ?osType,
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      guestId: map['guestId'] == null ? null : map['guestId'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : OsProfileLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
      windowsConfiguration: map['windowsConfiguration'] == null ? null : OsProfileWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

