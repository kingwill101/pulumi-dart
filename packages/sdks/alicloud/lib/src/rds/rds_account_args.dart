// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_rds_account_rds_account_args_doc}
/// The set of arguments for RdsAccount.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_account_rds_account_args_doc}
class RdsAccountArgs {
  /// The description of the account. The value must be 2 to 256 characters in length. The value can contain letters, digits, underscores (_), and hyphens (-), and must start with a letter.
  ///
  /// > **NOTE:** The name cannot start with http:// or https://.
  final pulumi.Input<String>? accountDescription;
  /// The name of the database account.
  /// * The name must be unique.
  /// * The name can contain lowercase letters, digits, and underscores (_). For MySQL databases, the name can contain uppercase letters.
  /// * The name must start with a letter and end with a letter or digit.
  /// * For MySQL databases, the name of the privileged account cannot be the same as that of the standard account. For example, if the name of the privileged account is Test1, the name of the standard account cannot be test1.
  /// * The length of the value must meet the following requirements:
  /// * If the instance runs MySQL 5.7 or MySQL 8.0, the value must be 2 to 32 characters in length.
  /// * If the instance runs MySQL 5.6, the value must be 2 to 16 characters in length.
  /// * If the instance runs SQL Server, the value must be 2 to 64 characters in length.
  /// * If the instance runs PostgreSQL with cloud disks, the value must be 2 to 63 characters in length.
  /// * If the instance runs PostgreSQL with local disks, the value must be 2 to 16 characters in length.
  /// * If the instance runs MariaDB, the value must be 2 to 16 characters in length.
  /// * For more information about invalid characters, See [Forbidden keywords](https://help.aliyun.com/zh/rds/developer-reference/forbidden-keywords?spm=api-workbench.API%20Document.0.0.529e2defHKoZ3o).
  final pulumi.Input<String>? accountName;
  /// The password of the account.
  /// * The value must be 8 to 32 characters in length.
  /// * The password must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters.
  /// * Special characters include ! @ # $ % ^ & * ( ) _ + - =
  final pulumi.Input<String>? accountPassword;
  /// The account type. Valid values:
  /// * Normal: standard account (default).
  /// * Super: privileged account.
  /// * Sysadmin: system admin account. The account type is available only for ApsaraDB RDS for SQL Server instances.
  ///
  /// > **NOTE:** Before you create a system admin account, check whether the RDS instance meets all prerequisites. For more information, See [Create a system admin account](https://help.aliyun.com/zh/rds/apsaradb-rds-for-sql-server/create-a-system-admin-account-for-an-apsaradb-rds-for-sql-server-instance?spm=api-workbench.API%20Document.0.0.529e2defHKoZ3o).
  final pulumi.Input<String>? accountType;
  /// Whether to apply password policy
  final pulumi.Input<bool>? checkPolicy;
  /// The ID of the instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The attribute has been deprecated from 1.120.0 and using `account_description` instead.
  final pulumi.Input<String>? description;
  /// The attribute has been deprecated from 1.120.0 and using `db_instance_id` instead.
  final pulumi.Input<String>? instanceId;
  /// An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The attribute has been deprecated from 1.120.0 and using `account_name` instead.
  final pulumi.Input<String>? name;
  /// The attribute has been deprecated from 1.120.0 and using `account_password` instead.
  final pulumi.Input<String>? password;
  /// Resets permissions flag of the privileged account. Default to `false`. Set it to `true` can resets permissions of the privileged account.
  final pulumi.Input<bool>? resetPermissionFlag;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The attribute has been deprecated from 1.120.0 and using `account_type` instead.
  ///
  /// > **NOTE**: Only MySQL engine is supported resets permissions of the privileged account.
  final pulumi.Input<String>? type;

  /// Creates a new [RdsAccountArgs].
  /// [accountDescription] The description of the account. The value must be 2 to 256 characters in length. The value can contain letters, digits, underscores (_), and hyphens (-), and must start with a letter.
  /// [accountName] The name of the database account.
  /// [accountPassword] The password of the account.
  /// [accountType] The account type. Valid values:
  /// [checkPolicy] Whether to apply password policy
  /// [dbInstanceId] The ID of the instance.
  /// [description] The attribute has been deprecated from 1.120.0 and using `account_description` instead.
  /// [instanceId] The attribute has been deprecated from 1.120.0 and using `db_instance_id` instead.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [name] The attribute has been deprecated from 1.120.0 and using `account_name` instead.
  /// [password] The attribute has been deprecated from 1.120.0 and using `account_password` instead.
  /// [resetPermissionFlag] Resets permissions flag of the privileged account. Default to `false`. Set it to `true` can resets permissions of the privileged account.
  /// [status] The status of the resource
  /// [type] The attribute has been deprecated from 1.120.0 and using `account_type` instead.
  RdsAccountArgs({
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

  factory RdsAccountArgs.fromMap(Map<String, dynamic> map) {
    return RdsAccountArgs(
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription'] as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword'] as String).input(),
      accountType: map['accountType'] == null ? null : (map['accountType'] as String).input(),
      checkPolicy: map['checkPolicy'] == null ? null : (map['checkPolicy'] as bool).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : (map['kmsEncryptedPassword'] as String).input(),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : ((map['kmsEncryptionContext'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resetPermissionFlag: map['resetPermissionFlag'] == null ? null : (map['resetPermissionFlag'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

