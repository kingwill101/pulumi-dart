// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The name of the account. The name must meet the following requirements:
  /// * The name must start with a lowercase letter and can contain lowercase letters, digits, and underscores (_).
  /// * The name can be up to 100 characters in length.
  /// * The name cannot be one of the reserved words listed in the [Reserved words for Redis account names](https://www.alibabacloud.com/help/en/redis/user-guide/create-and-manage-database-accounts) section.
  final pulumi.Input<String>? accountName;

  /// The password of the account. The password must be 8 to 32 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `!@ # $ % ^ & * ( ) _ + - =`. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? accountPassword;

  /// The privilege of account access database. Default value: `RoleReadWrite`
  /// - `RoleReadOnly`: This value is only for Redis and Memcache
  /// - `RoleReadWrite`: This value is only for Redis and Memcache
  final pulumi.Input<String>? accountPrivilege;

  /// Privilege type of account.
  /// - Normal: Common privilege.
  /// Default to Normal.
  final pulumi.Input<String>? accountType;

  /// Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  final pulumi.Input<String>? description;

  /// The Id of instance in which account belongs (The engine version of instance must be 4.0 or 4.0+).
  final pulumi.Input<String>? instanceId;

  /// An KMS encrypts password used to a Tair (Redis OSS-Compatible) And Memcache (KVStore) account. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a Tair (Redis OSS-Compatible) And Memcache (KVStore) account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;

  /// The status of Tair (Redis OSS-Compatible) And Memcache (KVStore) Account.
  final pulumi.Input<String>? status;

  /// Creates a new [AccountState].
  /// [accountName] The name of the account. The name must meet the following requirements:
  /// [accountPassword] The password of the account. The password must be 8 to 32 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `!@ # $ % ^ & * ( ) _ + - =`. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  /// [accountPrivilege] The privilege of account access database. Default value: `RoleReadWrite`
  /// [accountType] Privilege type of account.
  /// [description] Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  /// [instanceId] The Id of instance in which account belongs (The engine version of instance must be 4.0 or 4.0+).
  /// [kmsEncryptedPassword] An KMS encrypts password used to a Tair (Redis OSS-Compatible) And Memcache (KVStore) account. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a Tair (Redis OSS-Compatible) And Memcache (KVStore) account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [status] The status of Tair (Redis OSS-Compatible) And Memcache (KVStore) Account.
  AccountState({
    this.accountName,
    this.accountPassword,
    this.accountPrivilege,
    this.accountType,
    this.description,
    this.instanceId,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'accountPrivilege': ?accountPrivilege,
      'accountType': ?accountType,
      'description': ?description,
      'instanceId': ?instanceId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'status': ?status,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
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
      accountPrivilege: (() {
        final guardedValue = map['accountPrivilege'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountType: (() {
        final guardedValue = map['accountType'];
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
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
