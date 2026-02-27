// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Namespace.
class NamespaceArgs2 {
  /// ID of the KMS key used to encrypt the namespace's admin credentials secret.
  final Input<String>? adminPasswordSecretKmsKeyId;

  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manage_admin_password` and `admin_user_password_wo`.
  final Input<String>? adminUserPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manage_admin_password` and `admin_user_password`.
  final Input<String>? adminUserPasswordWo;

  /// Used together with `admin_user_password_wo` to trigger an update. Increment this value when an update to the `admin_user_password_wo` is required
  final Input<int>? adminUserPasswordWoVersion;

  /// The username of the administrator for the first database created in the namespace.
  final Input<String>? adminUsername;

  /// The name of the first database created in the namespace.
  final Input<String>? dbName;

  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `default_iam_role_arn`, it also must be part of `iam_roles`.
  final Input<String>? defaultIamRoleArn;

  /// A list of IAM roles to associate with the namespace.
  final Input<List<String>>? iamRoles;

  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  final Input<String>? kmsKeyId;

  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  final Input<List<String>>? logExports;

  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with `admin_user_password` and `admin_user_password_wo`.
  final Input<bool>? manageAdminPassword;

  /// The name of the namespace.
  final Input<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  NamespaceArgs2({
    this.adminPasswordSecretKmsKeyId,
    this.adminUserPassword,
    this.adminUserPasswordWo,
    this.adminUserPasswordWoVersion,
    this.adminUsername,
    this.dbName,
    this.defaultIamRoleArn,
    this.iamRoles,
    this.kmsKeyId,
    this.logExports,
    this.manageAdminPassword,
    required this.namespaceName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminPasswordSecretKmsKeyIdValue = adminPasswordSecretKmsKeyId;
    if (adminPasswordSecretKmsKeyIdValue != null) {
      map['adminPasswordSecretKmsKeyId'] = adminPasswordSecretKmsKeyIdValue;
    }
    final adminUserPasswordValue = adminUserPassword;
    if (adminUserPasswordValue != null) {
      map['adminUserPassword'] = adminUserPasswordValue;
    }
    final adminUserPasswordWoValue = adminUserPasswordWo;
    if (adminUserPasswordWoValue != null) {
      map['adminUserPasswordWo'] = adminUserPasswordWoValue;
    }
    final adminUserPasswordWoVersionValue = adminUserPasswordWoVersion;
    if (adminUserPasswordWoVersionValue != null) {
      map['adminUserPasswordWoVersion'] = adminUserPasswordWoVersionValue;
    }
    final adminUsernameValue = adminUsername;
    if (adminUsernameValue != null) {
      map['adminUsername'] = adminUsernameValue;
    }
    final dbNameValue = dbName;
    if (dbNameValue != null) {
      map['dbName'] = dbNameValue;
    }
    final defaultIamRoleArnValue = defaultIamRoleArn;
    if (defaultIamRoleArnValue != null) {
      map['defaultIamRoleArn'] = defaultIamRoleArnValue;
    }
    final iamRolesValue = iamRoles;
    if (iamRolesValue != null) {
      map['iamRoles'] = iamRolesValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final logExportsValue = logExports;
    if (logExportsValue != null) {
      map['logExports'] = logExportsValue;
    }
    final manageAdminPasswordValue = manageAdminPassword;
    if (manageAdminPasswordValue != null) {
      map['manageAdminPassword'] = manageAdminPasswordValue;
    }
    map['namespaceName'] = namespaceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NamespaceArgs2.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs2(
      adminPasswordSecretKmsKeyId:
          Input.asOptionalInput<String>(map['adminPasswordSecretKmsKeyId']),
      adminUserPassword:
          Input.asOptionalInput<String>(map['adminUserPassword']),
      adminUserPasswordWo:
          Input.asOptionalInput<String>(map['adminUserPasswordWo']),
      adminUserPasswordWoVersion:
          Input.asOptionalInput<int>(map['adminUserPasswordWoVersion']),
      adminUsername: Input.asOptionalInput<String>(map['adminUsername']),
      dbName: Input.asOptionalInput<String>(map['dbName']),
      defaultIamRoleArn:
          Input.asOptionalInput<String>(map['defaultIamRoleArn']),
      iamRoles: Input.asOptionalInput<List<String>>(map['iamRoles']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      logExports: Input.asOptionalInput<List<String>>(map['logExports']),
      manageAdminPassword:
          Input.asOptionalInput<bool>(map['manageAdminPassword']),
      namespaceName: Input.asInput<String>(map['namespaceName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
