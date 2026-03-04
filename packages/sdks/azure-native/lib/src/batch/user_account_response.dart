// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_user_configuration_response.dart';
import 'windows_user_configuration_response.dart';

/// Properties used to create a user on an Azure Batch node.
class UserAccountResponse {
  /// nonAdmin - The auto user is a standard user without elevated access. admin - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  final pulumi.Input<String>? elevationLevel;

  /// This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  final pulumi.Input<LinuxUserConfigurationResponse>? linuxUserConfiguration;

  /// The name of the user account. Names can contain any Unicode characters up to a maximum length of 20.
  final pulumi.Input<String> name;

  /// The password for the user account.
  final pulumi.Input<String> password;

  /// This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  final pulumi.Input<WindowsUserConfigurationResponse>?
  windowsUserConfiguration;

  /// Creates a new [UserAccountResponse].
  /// [elevationLevel] nonAdmin - The auto user is a standard user without elevated access. admin - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  /// [linuxUserConfiguration] This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  /// [name] The name of the user account. Names can contain any Unicode characters up to a maximum length of 20.
  /// [password] The password for the user account.
  /// [windowsUserConfiguration] This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  UserAccountResponse({
    this.elevationLevel,
    this.linuxUserConfiguration,
    required this.name,
    required this.password,
    this.windowsUserConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': ?elevationLevel,
      'linuxUserConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxUserConfigurationResponse,
            Map<String, dynamic>
          >(linuxUserConfiguration, (value) => value.toMap()),
      'name': name,
      'password': password,
      'windowsUserConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsUserConfigurationResponse,
            Map<String, dynamic>
          >(windowsUserConfiguration, (value) => value.toMap()),
    };
  }

  factory UserAccountResponse.fromMap(Map<String, dynamic> map) {
    return UserAccountResponse(
      elevationLevel: (() {
        final guardedValue = map['elevationLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linuxUserConfiguration: (() {
        final guardedValue = map['linuxUserConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxUserConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      windowsUserConfiguration: (() {
        final guardedValue = map['windowsUserConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsUserConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
