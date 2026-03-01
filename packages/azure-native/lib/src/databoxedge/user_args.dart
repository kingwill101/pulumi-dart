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
    required String deviceName,
    AsymmetricEncryptedSecret? encryptedPassword,
    String? name,
    required String resourceGroupName,
    required String userType,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      encryptedPassword = pulumi.Input.asOptionalInput<AsymmetricEncryptedSecret>(encryptedPassword),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userType = pulumi.Input.asInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'encryptedPassword': ?pulumi.Input.mapOptionalInputValue<AsymmetricEncryptedSecret, Map<String, dynamic>>(encryptedPassword, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'userType': userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      deviceName: map['deviceName'] as String,
      encryptedPassword: map['encryptedPassword'] == null ? null : AsymmetricEncryptedSecret.fromMap((map['encryptedPassword'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userType: map['userType'] as String,
    );
  }
}

