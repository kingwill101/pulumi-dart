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
    pulumi.Output<String>? accountDescription,
    pulumi.Output<String>? accountLockState,
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? accountPasswordValidTime,
    pulumi.Output<String>? accountType,
    required pulumi.Output<String> dbClusterId,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountLockState = pulumi.Input.asOptionalInput<String>(accountLockState),
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountPasswordValidTime = pulumi.Input.asOptionalInput<String>(accountPasswordValidTime),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext);

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
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountLockState: map['accountLockState'] == null ? null : pulumi.Output.create<String>(map['accountLockState'] as String),
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      accountPasswordValidTime: map['accountPasswordValidTime'] == null ? null : pulumi.Output.create<String>(map['accountPasswordValidTime'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
    );
  }
}

