// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserLoginProfile resources.
class UserLoginProfileState {
  /// The encrypted password, base64 encoded. Only available if password was handled on resource creation, not import.
  final pulumi.Input<String>? encryptedPassword;

  /// The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on this provider resource creation, not import.
  final pulumi.Input<String>? keyFingerprint;

  /// The plain text password, only available when `pgp_key` is not provided.
  final pulumi.Input<String>? password;

  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  final pulumi.Input<int>? passwordLength;

  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  final pulumi.Input<bool>? passwordResetRequired;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  final pulumi.Input<String>? pgpKey;

  /// The IAM user's name.
  final pulumi.Input<String>? user;

  /// Creates a new [UserLoginProfileState].
  /// [encryptedPassword] The encrypted password, base64 encoded. Only available if password was handled on resource creation, not import.
  /// [keyFingerprint] The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on this provider resource creation, not import.
  /// [password] The plain text password, only available when `pgp_key` is not provided.
  /// [passwordLength] The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  /// [passwordResetRequired] Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  /// [user] The IAM user's name.
  UserLoginProfileState({
    this.encryptedPassword,
    this.keyFingerprint,
    this.password,
    this.passwordLength,
    this.passwordResetRequired,
    this.pgpKey,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedPassword': ?encryptedPassword,
      'keyFingerprint': ?keyFingerprint,
      'password': ?password,
      'passwordLength': ?passwordLength,
      'passwordResetRequired': ?passwordResetRequired,
      'pgpKey': ?pgpKey,
      'user': ?user,
    };
  }

  factory UserLoginProfileState.fromMap(Map<String, dynamic> map) {
    return UserLoginProfileState(
      encryptedPassword: (() {
        final guardedValue = map['encryptedPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyFingerprint: (() {
        final guardedValue = map['keyFingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passwordLength: (() {
        final guardedValue = map['passwordLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      passwordResetRequired: (() {
        final guardedValue = map['passwordResetRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pgpKey: (() {
        final guardedValue = map['pgpKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
