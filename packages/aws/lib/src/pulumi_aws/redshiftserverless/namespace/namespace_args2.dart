// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Namespace.
class NamespaceArgs2 {
  /// ID of the KMS key used to encrypt the namespace's admin credentials secret.
  final Input<String>? adminPasswordSecretKmsKeyId;

  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with <span pulumi-lang-nodejs="`manageAdminPassword`" pulumi-lang-dotnet="`ManageAdminPassword`" pulumi-lang-go="`manageAdminPassword`" pulumi-lang-python="`manage_admin_password`" pulumi-lang-yaml="`manageAdminPassword`" pulumi-lang-java="`manageAdminPassword`">`manage_admin_password`</span> and <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span>.
  final Input<String>? adminUserPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with <span pulumi-lang-nodejs="`manageAdminPassword`" pulumi-lang-dotnet="`ManageAdminPassword`" pulumi-lang-go="`manageAdminPassword`" pulumi-lang-python="`manage_admin_password`" pulumi-lang-yaml="`manageAdminPassword`" pulumi-lang-java="`manageAdminPassword`">`manage_admin_password`</span> and <span pulumi-lang-nodejs="`adminUserPassword`" pulumi-lang-dotnet="`AdminUserPassword`" pulumi-lang-go="`adminUserPassword`" pulumi-lang-python="`admin_user_password`" pulumi-lang-yaml="`adminUserPassword`" pulumi-lang-java="`adminUserPassword`">`admin_user_password`</span>.
  final Input<String>? adminUserPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span> is required
  final Input<int>? adminUserPasswordWoVersion;

  /// The username of the administrator for the first database created in the namespace.
  final Input<String>? adminUsername;

  /// The name of the first database created in the namespace.
  final Input<String>? dbName;

  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying <span pulumi-lang-nodejs="`defaultIamRoleArn`" pulumi-lang-dotnet="`DefaultIamRoleArn`" pulumi-lang-go="`defaultIamRoleArn`" pulumi-lang-python="`default_iam_role_arn`" pulumi-lang-yaml="`defaultIamRoleArn`" pulumi-lang-java="`defaultIamRoleArn`">`default_iam_role_arn`</span>, it also must be part of <span pulumi-lang-nodejs="`iamRoles`" pulumi-lang-dotnet="`IamRoles`" pulumi-lang-go="`iamRoles`" pulumi-lang-python="`iam_roles`" pulumi-lang-yaml="`iamRoles`" pulumi-lang-java="`iamRoles`">`iam_roles`</span>.
  final Input<String>? defaultIamRoleArn;

  /// A list of IAM roles to associate with the namespace.
  final Input<List<String>>? iamRoles;

  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  final Input<String>? kmsKeyId;

  /// The types of logs the namespace can export. Available export types are <span pulumi-lang-nodejs="`userlog`" pulumi-lang-dotnet="`Userlog`" pulumi-lang-go="`userlog`" pulumi-lang-python="`userlog`" pulumi-lang-yaml="`userlog`" pulumi-lang-java="`userlog`">`userlog`</span>, <span pulumi-lang-nodejs="`connectionlog`" pulumi-lang-dotnet="`Connectionlog`" pulumi-lang-go="`connectionlog`" pulumi-lang-python="`connectionlog`" pulumi-lang-yaml="`connectionlog`" pulumi-lang-java="`connectionlog`">`connectionlog`</span>, and <span pulumi-lang-nodejs="`useractivitylog`" pulumi-lang-dotnet="`Useractivitylog`" pulumi-lang-go="`useractivitylog`" pulumi-lang-python="`useractivitylog`" pulumi-lang-yaml="`useractivitylog`" pulumi-lang-java="`useractivitylog`">`useractivitylog`</span>.
  final Input<List<String>>? logExports;

  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with <span pulumi-lang-nodejs="`adminUserPassword`" pulumi-lang-dotnet="`AdminUserPassword`" pulumi-lang-go="`adminUserPassword`" pulumi-lang-python="`admin_user_password`" pulumi-lang-yaml="`adminUserPassword`" pulumi-lang-java="`adminUserPassword`">`admin_user_password`</span> and <span pulumi-lang-nodejs="`adminUserPasswordWo`" pulumi-lang-dotnet="`AdminUserPasswordWo`" pulumi-lang-go="`adminUserPasswordWo`" pulumi-lang-python="`admin_user_password_wo`" pulumi-lang-yaml="`adminUserPasswordWo`" pulumi-lang-java="`adminUserPasswordWo`">`admin_user_password_wo`</span>.
  final Input<bool>? manageAdminPassword;

  /// The name of the namespace.
  final Input<String> namespaceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
