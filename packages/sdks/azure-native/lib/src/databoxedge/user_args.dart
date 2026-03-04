// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret.dart';

/// {@template pulumi_databoxedge_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_user_args_doc}
class UserArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;

  /// The password details.
  final pulumi.Input<AsymmetricEncryptedSecret>? encryptedPassword;

  /// The user name.
  final pulumi.Input<String>? name;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Type of the user.
  final pulumi.Input<String> userType;

  /// Creates a new [UserArgs].
  /// [deviceName] The device name.
  /// [encryptedPassword] The password details.
  /// [name] The user name.
  /// [resourceGroupName] The resource group name.
  /// [userType] Type of the user.
  UserArgs({
    required this.deviceName,
    this.encryptedPassword,
    this.name,
    required this.resourceGroupName,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'encryptedPassword':
          ?pulumi.Input.mapOptionalInputValue<
            AsymmetricEncryptedSecret,
            Map<String, dynamic>
          >(encryptedPassword, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'userType': userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      encryptedPassword: (() {
        final guardedValue = map['encryptedPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AsymmetricEncryptedSecret.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      userType: pulumi.Input.fromValue(map['userType'] as String),
    );
  }
}
