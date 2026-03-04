// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_rds_account_account_args_doc}
class AccountArgs {
  final pulumi.Input<String>? accountDescription;
  final pulumi.Input<String>? accountName;
  final pulumi.Input<String>? accountPassword;
  final pulumi.Input<String>? accountType;
  final pulumi.Input<bool>? checkPolicy;
  final pulumi.Input<String>? dbInstanceId;

  /// Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  final pulumi.Input<String>? description;

  /// The Id of instance in which account belongs.
  final pulumi.Input<String>? instanceId;

  /// An KMS encrypts password used to a db account. If the `password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;

  /// Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  final pulumi.Input<String>? name;

  /// Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? password;
  final pulumi.Input<bool>? resetPermissionFlag;
  final pulumi.Input<String>? status;

  /// Privilege type of account. The SQLServer engine does not support create high privilege accounts.
  /// - Normal: Common privilege.
  /// - Super: High privilege.
  ///
  /// Default to Normal.
  final pulumi.Input<String>? type;

  /// Creates a new [AccountArgs].
  /// [accountDescription] Optional.
  /// [accountName] Optional.
  /// [accountPassword] Optional.
  /// [accountType] Optional.
  /// [checkPolicy] Optional.
  /// [dbInstanceId] Optional.
  /// [description] Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  /// [instanceId] The Id of instance in which account belongs.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. If the `password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [name] Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  /// [password] Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  /// [resetPermissionFlag] Optional.
  /// [status] Optional.
  /// [type] Privilege type of account. The SQLServer engine does not support create high privilege accounts.
  AccountArgs({
    this.accountDescription,
    this.accountName,
    this.accountPassword,
    this.accountType,
    this.checkPolicy,
    this.dbInstanceId,
    this.description,
    this.instanceId,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.name,
    this.password,
    this.resetPermissionFlag,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'accountType': ?accountType,
      'checkPolicy': ?checkPolicy,
      'dbInstanceId': ?dbInstanceId,
      'description': ?description,
      'instanceId': ?instanceId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'name': ?name,
      'password': ?password,
      'resetPermissionFlag': ?resetPermissionFlag,
      'status': ?status,
      'type': ?type,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountDescription: (() {
        final guardedValue = map['accountDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: (() {
        final guardedValue = map['accountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountPassword: (() {
        final guardedValue = map['accountPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountType: (() {
        final guardedValue = map['accountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      checkPolicy: (() {
        final guardedValue = map['checkPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resetPermissionFlag: (() {
        final guardedValue = map['resetPermissionFlag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
