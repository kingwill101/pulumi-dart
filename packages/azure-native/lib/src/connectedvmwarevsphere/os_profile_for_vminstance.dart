// ignore_for_file: unused_element, unnecessary_cast

import 'windows_configuration.dart';

/// Specifies the operating system settings for the virtual machine.
class OsProfileForVMInstance {
  /// Sets administrator password.
  final String? adminPassword;
  /// Gets or sets administrator username.
  final String? adminUsername;
  /// Gets or sets computer name.
  final String? computerName;
  /// Gets or sets the guestId.
  final String? guestId;
  /// Gets or sets the type of the os.
  final String? osType;
  /// Windows Configuration.
  final WindowsConfiguration? windowsConfiguration;

  /// Creates a new [OsProfileForVMInstance].
  /// [adminPassword] Sets administrator password.
  /// [adminUsername] Gets or sets administrator username.
  /// [computerName] Gets or sets computer name.
  /// [guestId] Gets or sets the guestId.
  /// [osType] Gets or sets the type of the os.
  /// [windowsConfiguration] Windows Configuration.
  OsProfileForVMInstance({
    this.adminPassword,
    this.adminUsername,
    this.computerName,
    this.guestId,
    this.osType,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'computerName': ?computerName,
      'guestId': ?guestId,
      'osType': ?osType,
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory OsProfileForVMInstance.fromMap(Map<String, dynamic> map) {
    return OsProfileForVMInstance(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      guestId: map['guestId'] == null ? null : map['guestId'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      windowsConfiguration: map['windowsConfiguration'] == null ? null : WindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

