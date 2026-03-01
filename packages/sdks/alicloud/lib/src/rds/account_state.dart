// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
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

  /// Creates a new [AccountState].
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
  AccountState({
    pulumi.Output<String>? accountDescription,
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? accountType,
    pulumi.Output<bool>? checkPolicy,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<bool>? resetPermissionFlag,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      checkPolicy = pulumi.Input.asOptionalInput<bool>(checkPolicy),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      resetPermissionFlag = pulumi.Input.asOptionalInput<bool>(resetPermissionFlag),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

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

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      checkPolicy: map['checkPolicy'] == null ? null : pulumi.Output.create<bool>(map['checkPolicy'] as bool),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resetPermissionFlag: map['resetPermissionFlag'] == null ? null : pulumi.Output.create<bool>(map['resetPermissionFlag'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

