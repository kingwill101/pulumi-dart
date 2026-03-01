// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_kvstore_account_account_args_doc}
class AccountArgs {
  /// The name of the account. The name must meet the following requirements:
  /// * The name must start with a lowercase letter and can contain lowercase letters, digits, and underscores (_).
  /// * The name can be up to 100 characters in length.
  /// * The name cannot be one of the reserved words listed in the [Reserved words for Redis account names](https://www.alibabacloud.com/help/en/redis/user-guide/create-and-manage-database-accounts) section.
  final pulumi.Input<String> accountName;
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
  final pulumi.Input<String> instanceId;
  /// An KMS encrypts password used to a Tair (Redis OSS-Compatible) And Memcache (KVStore) account. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a Tair (Redis OSS-Compatible) And Memcache (KVStore) account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the account. The name must meet the following requirements:
  /// [accountPassword] The password of the account. The password must be 8 to 32 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `!@ # $ % ^ & * ( ) _ + - =`. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  /// [accountPrivilege] The privilege of account access database. Default value: `RoleReadWrite`
  /// [accountType] Privilege type of account.
  /// [description] Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  /// [instanceId] The Id of instance in which account belongs (The engine version of instance must be 4.0 or 4.0+).
  /// [kmsEncryptedPassword] An KMS encrypts password used to a Tair (Redis OSS-Compatible) And Memcache (KVStore) account. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a Tair (Redis OSS-Compatible) And Memcache (KVStore) account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  AccountArgs({
    required String accountName,
    String? accountPassword,
    String? accountPrivilege,
    String? accountType,
    String? description,
    required String instanceId,
    String? kmsEncryptedPassword,
    Map<String, String>? kmsEncryptionContext,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountPrivilege = pulumi.Input.asOptionalInput<String>(accountPrivilege),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'accountPassword': ?accountPassword,
      'accountPrivilege': ?accountPrivilege,
      'accountType': ?accountType,
      'description': ?description,
      'instanceId': instanceId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] as String,
      accountPassword: map['accountPassword'] == null ? null : map['accountPassword'] as String,
      accountPrivilege: map['accountPrivilege'] == null ? null : map['accountPrivilege'] as String,
      accountType: map['accountType'] == null ? null : map['accountType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      instanceId: map['instanceId'] as String,
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : map['kmsEncryptedPassword'] as String,
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : (map['kmsEncryptionContext'] as Map).cast<String, String>(),
    );
  }
}

