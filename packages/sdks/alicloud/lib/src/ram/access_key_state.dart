// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessKey resources.
class AccessKeyState {
  /// (Available since v1.246.0) The create time of the AccessKey.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? encryptedSecret;
  /// (Available since v1.47.0) The fingerprint of the PGP key used to encrypt the secret
  final pulumi.Input<String>? keyFingerprint;
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`
  final pulumi.Input<String>? pgpKey;
  /// (Available since v1.98.0) The secret access key. Note that this will be written to the state file.
  /// If you use this, please protect your backend state file judiciously.
  /// Alternatively, you may supply a `pgp_key` instead, which will prevent the secret from being stored in plaintext,
  /// at the cost of preventing the use of the secret key in automation.
  final pulumi.Input<String>? secret;
  /// The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  final pulumi.Input<String>? secretFile;
  /// The status of the AccessKey. Value:
  /// - Active: Activated.
  /// - Inactive: Disabled.
  final pulumi.Input<String>? status;
  /// The RAM user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [AccessKeyState].
  /// [createTime] (Available since v1.246.0) The create time of the AccessKey.
  /// [encryptedSecret] Optional.
  /// [keyFingerprint] (Available since v1.47.0) The fingerprint of the PGP key used to encrypt the secret
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`
  /// [secret] (Available since v1.98.0) The secret access key. Note that this will be written to the state file.
  /// [secretFile] The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  /// [status] The status of the AccessKey. Value:
  /// [userName] The RAM user name.
  AccessKeyState({
    this.createTime,
    this.encryptedSecret,
    this.keyFingerprint,
    this.pgpKey,
    this.secret,
    this.secretFile,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'encryptedSecret': ?encryptedSecret,
      'keyFingerprint': ?keyFingerprint,
      'pgpKey': ?pgpKey,
      'secret': ?secret,
      'secretFile': ?secretFile,
      'status': ?status,
      'userName': ?userName,
    };
  }

  factory AccessKeyState.fromMap(Map<String, dynamic> map) {
    return AccessKeyState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      encryptedSecret: map['encryptedSecret'] == null ? null : (map['encryptedSecret']! as String).input(),
      keyFingerprint: map['keyFingerprint'] == null ? null : (map['keyFingerprint']! as String).input(),
      pgpKey: map['pgpKey'] == null ? null : (map['pgpKey']! as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as String).input(),
      secretFile: map['secretFile'] == null ? null : (map['secretFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

