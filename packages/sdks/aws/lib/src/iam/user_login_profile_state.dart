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
    pulumi.Output<String>? encryptedPassword,
    pulumi.Output<String>? keyFingerprint,
    pulumi.Output<String>? password,
    pulumi.Output<int>? passwordLength,
    pulumi.Output<bool>? passwordResetRequired,
    pulumi.Output<String>? pgpKey,
    pulumi.Output<String>? user,
  }) :
      encryptedPassword = pulumi.Input.asOptionalInput<String>(encryptedPassword),
      keyFingerprint = pulumi.Input.asOptionalInput<String>(keyFingerprint),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordLength = pulumi.Input.asOptionalInput<int>(passwordLength),
      passwordResetRequired = pulumi.Input.asOptionalInput<bool>(passwordResetRequired),
      pgpKey = pulumi.Input.asOptionalInput<String>(pgpKey),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      encryptedPassword: map['encryptedPassword'] == null ? null : pulumi.Output.create<String>(map['encryptedPassword'] as String),
      keyFingerprint: map['keyFingerprint'] == null ? null : pulumi.Output.create<String>(map['keyFingerprint'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      passwordLength: map['passwordLength'] == null ? null : pulumi.Output.create<int>(map['passwordLength'] as int),
      passwordResetRequired: map['passwordResetRequired'] == null ? null : pulumi.Output.create<bool>(map['passwordResetRequired'] as bool),
      pgpKey: map['pgpKey'] == null ? null : pulumi.Output.create<String>(map['pgpKey'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

