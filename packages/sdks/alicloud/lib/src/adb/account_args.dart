// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_adb_account_account_args_doc}
class AccountArgs {
  /// Account description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  final pulumi.Input<String>? accountDescription;

  /// Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  final pulumi.Input<String> accountName;

  /// Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? accountPassword;

  /// The Id of cluster in which account belongs.
  final pulumi.Input<String> dbClusterId;

  /// An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;

  /// Creates a new [AccountArgs].
  /// [accountDescription] Account description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  /// [accountName] Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  /// [accountPassword] Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  /// [dbClusterId] The Id of cluster in which account belongs.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  AccountArgs({
    this.accountDescription,
    required this.accountName,
    this.accountPassword,
    required this.dbClusterId,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': ?accountPassword,
      'dbClusterId': dbClusterId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountDescription: (() {
        final guardedValue = map['accountDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPassword: (() {
        final guardedValue = map['accountPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      kmsEncryptedPassword: (() {
        final guardedValue = map['kmsEncryptedPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsEncryptionContext: (() {
        final guardedValue = map['kmsEncryptionContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
