// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_namespace_namespace_args_doc}
class NamespaceArgs {
  /// ID of the KMS key used to encrypt the namespace's admin credentials secret.
  final pulumi.Input<String>? adminPasswordSecretKmsKeyId;

  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manage_admin_password` and `admin_user_password_wo`.
  final pulumi.Input<String>? adminUserPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manage_admin_password` and `admin_user_password`.
  final pulumi.Input<String>? adminUserPasswordWo;

  /// Used together with `admin_user_password_wo` to trigger an update. Increment this value when an update to the `admin_user_password_wo` is required
  final pulumi.Input<int>? adminUserPasswordWoVersion;

  /// The username of the administrator for the first database created in the namespace.
  final pulumi.Input<String>? adminUsername;

  /// The name of the first database created in the namespace.
  final pulumi.Input<String>? dbName;

  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `default_iam_role_arn`, it also must be part of `iam_roles`.
  final pulumi.Input<String>? defaultIamRoleArn;

  /// A list of IAM roles to associate with the namespace.
  final pulumi.Input<List<String>>? iamRoles;

  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  final pulumi.Input<String>? kmsKeyId;

  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  final pulumi.Input<List<String>>? logExports;

  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with `admin_user_password` and `admin_user_password_wo`.
  final pulumi.Input<bool>? manageAdminPassword;

  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceArgs].
  /// [adminPasswordSecretKmsKeyId] ID of the KMS key used to encrypt the namespace's admin credentials secret.
  /// [adminUserPassword] The password of the administrator for the first database created in the namespace.
  /// [adminUserPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [adminUserPasswordWoVersion] Used together with `admin_user_password_wo` to trigger an update. Increment this value when an update to the `admin_user_password_wo` is required
  /// [adminUsername] The username of the administrator for the first database created in the namespace.
  /// [dbName] The name of the first database created in the namespace.
  /// [defaultIamRoleArn] The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `default_iam_role_arn`, it also must be part of `iam_roles`.
  /// [iamRoles] A list of IAM roles to associate with the namespace.
  /// [kmsKeyId] The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  /// [logExports] The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  /// [manageAdminPassword] Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// [namespaceName] The name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  NamespaceArgs({
    String? adminPasswordSecretKmsKeyId,
    String? adminUserPassword,
    String? adminUserPasswordWo,
    int? adminUserPasswordWoVersion,
    String? adminUsername,
    String? dbName,
    String? defaultIamRoleArn,
    List<String>? iamRoles,
    String? kmsKeyId,
    List<String>? logExports,
    bool? manageAdminPassword,
    required String namespaceName,
    String? region,
    Map<String, String>? tags,
  })  : adminPasswordSecretKmsKeyId =
            pulumi.Input.asOptionalInput<String>(adminPasswordSecretKmsKeyId),
        adminUserPassword =
            pulumi.Input.asOptionalInput<String>(adminUserPassword),
        adminUserPasswordWo =
            pulumi.Input.asOptionalInput<String>(adminUserPasswordWo),
        adminUserPasswordWoVersion =
            pulumi.Input.asOptionalInput<int>(adminUserPasswordWoVersion),
        adminUsername = pulumi.Input.asOptionalInput<String>(adminUsername),
        dbName = pulumi.Input.asOptionalInput<String>(dbName),
        defaultIamRoleArn =
            pulumi.Input.asOptionalInput<String>(defaultIamRoleArn),
        iamRoles = pulumi.Input.asOptionalInput<List<String>>(iamRoles),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        logExports = pulumi.Input.asOptionalInput<List<String>>(logExports),
        manageAdminPassword =
            pulumi.Input.asOptionalInput<bool>(manageAdminPassword),
        namespaceName = pulumi.Input.asInput<String>(namespaceName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      adminPasswordSecretKmsKeyId: map['adminPasswordSecretKmsKeyId'] == null
          ? null
          : map['adminPasswordSecretKmsKeyId'] as String,
      adminUserPassword: map['adminUserPassword'] == null
          ? null
          : map['adminUserPassword'] as String,
      adminUserPasswordWo: map['adminUserPasswordWo'] == null
          ? null
          : map['adminUserPasswordWo'] as String,
      adminUserPasswordWoVersion: map['adminUserPasswordWoVersion'] == null
          ? null
          : map['adminUserPasswordWoVersion'] as int,
      adminUsername:
          map['adminUsername'] == null ? null : map['adminUsername'] as String,
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      defaultIamRoleArn: map['defaultIamRoleArn'] == null
          ? null
          : map['defaultIamRoleArn'] as String,
      iamRoles: map['iamRoles'] == null
          ? null
          : (map['iamRoles'] as List).cast<String>(),
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      logExports: map['logExports'] == null
          ? null
          : (map['logExports'] as List).cast<String>(),
      manageAdminPassword: map['manageAdminPassword'] == null
          ? null
          : map['manageAdminPassword'] as bool,
      namespaceName: map['namespaceName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
