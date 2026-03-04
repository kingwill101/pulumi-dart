// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User configuration.
class UserDetails {
  /// Location of the secret used for authentication.
  final pulumi.Input<String>? secretLocation;

  /// Type of the secret used for authentication.
  final pulumi.Input<String> secretType;

  /// SSH Public Key for the user.
  final pulumi.Input<List<String>>? sshPubKey;

  /// Name of the user.
  final pulumi.Input<String> userName;

  /// Creates a new [UserDetails].
  /// [secretLocation] Location of the secret used for authentication.
  /// [secretType] Type of the secret used for authentication.
  /// [sshPubKey] SSH Public Key for the user.
  /// [userName] Name of the user.
  UserDetails({
    this.secretLocation,
    required this.secretType,
    this.sshPubKey,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretLocation': ?secretLocation,
      'secretType': secretType,
      'sshPubKey': ?sshPubKey,
      'userName': userName,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      secretLocation: (() {
        final guardedValue = map['secretLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      sshPubKey: (() {
        final guardedValue = map['sshPubKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
