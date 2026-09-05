// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_namespace_namespace_args_doc}
class NamespaceArgs {
  /// ID of the KMS key used to encrypt the namespace's admin credentials secret.
  final pulumi.Input<String?>? adminPasswordSecretKmsKeyId;
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manageAdminPassword` and `adminUserPasswordWo`.
  final pulumi.Input<String?>? adminUserPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password of the administrator for the first database created in the namespace.
  /// Conflicts with `manageAdminPassword` and `adminUserPassword`.
  final pulumi.Input<String?>? adminUserPasswordWo;
  /// Used together with `adminUserPasswordWo` to trigger an update. Increment this value when an update to the `adminUserPasswordWo` is required
  final pulumi.Input<int?>? adminUserPasswordWoVersion;
  /// The username of the administrator for the first database created in the namespace.
  final pulumi.Input<String?>? adminUsername;
  /// The name of the first database created in the namespace.
  final pulumi.Input<String?>? dbName;
  /// ARN of the IAM role to set as a default in the namespace. When specifying `defaultIamRoleArn`, it also must be part of `iamRoles`.
  final pulumi.Input<String?>? defaultIamRoleArn;
  /// A list of IAM roles to associate with the namespace.
  final pulumi.Input<List<String>?>? iamRoles;
  /// ARN of the Amazon Web Services KMS key used to encrypt your data.
  final pulumi.Input<String?>? kmsKeyId;
  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  final pulumi.Input<List<String>?>? logExports;
  /// Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// Conflicts with `adminUserPassword` and `adminUserPasswordWo`.
  final pulumi.Input<bool?>? manageAdminPassword;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NamespaceArgs].
  /// [adminPasswordSecretKmsKeyId] ID of the KMS key used to encrypt the namespace's admin credentials secret.
  /// [adminUserPassword] The password of the administrator for the first database created in the namespace.
  /// [adminUserPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [adminUserPasswordWoVersion] Used together with `adminUserPasswordWo` to trigger an update. Increment this value when an update to the `adminUserPasswordWo` is required
  /// [adminUsername] The username of the administrator for the first database created in the namespace.
  /// [dbName] The name of the first database created in the namespace.
  /// [defaultIamRoleArn] ARN of the IAM role to set as a default in the namespace. When specifying `defaultIamRoleArn`, it also must be part of `iamRoles`.
  /// [iamRoles] A list of IAM roles to associate with the namespace.
  /// [kmsKeyId] ARN of the Amazon Web Services KMS key used to encrypt your data.
  /// [logExports] The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  /// [manageAdminPassword] Whether to use AWS SecretManager to manage namespace's admin credentials.
  /// [namespaceName] The name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const NamespaceArgs({
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
    return <String, dynamic>{
      'adminPasswordSecretKmsKeyId': ?adminPasswordSecretKmsKeyId,
      'adminUserPassword': ?adminUserPassword,
      'adminUserPasswordWo': ?adminUserPasswordWo,
      'adminUserPasswordWoVersion': ?adminUserPasswordWoVersion,
      'adminUsername': ?adminUsername,
      'dbName': ?dbName,
      'defaultIamRoleArn': ?defaultIamRoleArn,
      'iamRoles': ?iamRoles,
      'kmsKeyId': ?kmsKeyId,
      'logExports': ?logExports,
      'manageAdminPassword': ?manageAdminPassword,
      'namespaceName': namespaceName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      adminPasswordSecretKmsKeyId: (() { final guardedValue = map['adminPasswordSecretKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUserPassword: (() { final guardedValue = map['adminUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUserPasswordWo: (() { final guardedValue = map['adminUserPasswordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUserPasswordWoVersion: (() { final guardedValue = map['adminUserPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultIamRoleArn: (() { final guardedValue = map['defaultIamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logExports: (() { final guardedValue = map['logExports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      manageAdminPassword: (() { final guardedValue = map['manageAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
