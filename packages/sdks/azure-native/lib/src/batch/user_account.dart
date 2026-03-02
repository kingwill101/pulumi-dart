// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elevation_level.dart';
import 'linux_user_configuration.dart';
import 'windows_user_configuration.dart';

/// Properties used to create a user on an Azure Batch node.
class UserAccount {
  /// nonAdmin - The auto user is a standard user without elevated access. admin - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  final pulumi.Input<ElevationLevel>? elevationLevel;
  /// This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  final pulumi.Input<LinuxUserConfiguration>? linuxUserConfiguration;
  /// The name of the user account. Names can contain any Unicode characters up to a maximum length of 20.
  final pulumi.Input<String> name;
  /// The password for the user account.
  final pulumi.Input<String> password;
  /// This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  final pulumi.Input<WindowsUserConfiguration>? windowsUserConfiguration;

  /// Creates a new [UserAccount].
  /// [elevationLevel] nonAdmin - The auto user is a standard user without elevated access. admin - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  /// [linuxUserConfiguration] This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  /// [name] The name of the user account. Names can contain any Unicode characters up to a maximum length of 20.
  /// [password] The password for the user account.
  /// [windowsUserConfiguration] This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  UserAccount({
    this.elevationLevel,
    this.linuxUserConfiguration,
    required this.name,
    required this.password,
    this.windowsUserConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': ?pulumi.Input.mapOptionalInputValue<ElevationLevel, String>(elevationLevel, (value) => value.value),
      'linuxUserConfiguration': ?pulumi.Input.mapOptionalInputValue<LinuxUserConfiguration, Map<String, dynamic>>(linuxUserConfiguration, (value) => value.toMap()),
      'name': name,
      'password': password,
      'windowsUserConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsUserConfiguration, Map<String, dynamic>>(windowsUserConfiguration, (value) => value.toMap()),
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      elevationLevel: map['elevationLevel'] == null ? null : (ElevationLevel.fromValue(map['elevationLevel'] as String)).input(),
      linuxUserConfiguration: map['linuxUserConfiguration'] == null ? null : (LinuxUserConfiguration.fromMap((map['linuxUserConfiguration'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      password: (map['password'] as String).input(),
      windowsUserConfiguration: map['windowsUserConfiguration'] == null ? null : (WindowsUserConfiguration.fromMap((map['windowsUserConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

