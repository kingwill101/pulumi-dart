// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_polardb_account_account_args_doc}
class AccountArgs {
  /// The description of the database account.
  final pulumi.Input<String>? accountDescription;
  /// The lock status of the account. Valid values:
  /// - `UnLock`: The account is not locked.
  /// - `Lock`: The account is locked.
  final pulumi.Input<String>? accountLockState;
  /// The account name. Must meet the following requirements:
  /// - Start with a lowercase letter and end with a letter or number.
  /// - Consists of lowercase letters, numbers, or underscores.
  /// - The length is 2 to 16 characters.
  /// - You cannot use some reserved usernames, such as root and admin.
  final pulumi.Input<String> accountName;
  /// The account password. You have to specify one of `account_password` and `kms_encrypted_password` fields. Must  meet the following requirements:
  /// - Contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters.
  /// - Be 8 to 32 characters in length.
  /// - Special characters include !@#$%^&*()_+-=.
  final pulumi.Input<String>? accountPassword;
  /// The time when the password for the database account expires.
  final pulumi.Input<String>? accountPasswordValidTime;
  /// The account type. Default value:`Normal`. Valid values: `Normal`, `Super`.
  final pulumi.Input<String>? accountType;
  /// The cluster ID.
  final pulumi.Input<String> dbClusterId;
  /// An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;

  /// Creates a new [AccountArgs].
  /// [accountDescription] The description of the database account.
  /// [accountLockState] The lock status of the account. Valid values:
  /// [accountName] The account name. Must meet the following requirements:
  /// [accountPassword] The account password. You have to specify one of `account_password` and `kms_encrypted_password` fields. Must  meet the following requirements:
  /// [accountPasswordValidTime] The time when the password for the database account expires.
  /// [accountType] The account type. Default value:`Normal`. Valid values: `Normal`, `Super`.
  /// [dbClusterId] The cluster ID.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  AccountArgs({
    this.accountDescription,
    this.accountLockState,
    required this.accountName,
    this.accountPassword,
    this.accountPasswordValidTime,
    this.accountType,
    required this.dbClusterId,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountLockState': ?accountLockState,
      'accountName': accountName,
      'accountPassword': ?accountPassword,
      'accountPasswordValidTime': ?accountPasswordValidTime,
      'accountType': ?accountType,
      'dbClusterId': dbClusterId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountDescription: (() { final guardedValue = map['accountDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountLockState: (() { final guardedValue = map['accountLockState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPassword: (() { final guardedValue = map['accountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountPasswordValidTime: (() { final guardedValue = map['accountPasswordValidTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      kmsEncryptedPassword: (() { final guardedValue = map['kmsEncryptedPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

