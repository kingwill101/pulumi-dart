// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The username of the administrator for the first database created in the namespace.
  final String adminUsername;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Namespace.
  final String arn;

  /// The name of the first database created in the namespace.
  final String dbName;

  /// The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `default_iam_role_arn`, it also must be part of `iam_roles`.
  final String defaultIamRoleArn;

  /// A list of IAM roles to associate with the namespace.
  final List<String> iamRoles;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  final String kmsKeyId;

  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  final List<String> logExports;

  /// The Redshift Namespace ID.
  final String namespaceId;
  final String namespaceName;
  final String region;

  /// Creates a new [GetNamespaceResult].
  /// [adminUsername] The username of the administrator for the first database created in the namespace.
  /// [arn] Amazon Resource Name (ARN) of the Redshift Serverless Namespace.
  /// [dbName] The name of the first database created in the namespace.
  /// [defaultIamRoleArn] The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. When specifying `default_iam_role_arn`, it also must be part of `iam_roles`.
  /// [iamRoles] A list of IAM roles to associate with the namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] The ARN of the Amazon Web Services Key Management Service key used to encrypt your data.
  /// [logExports] The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  /// [namespaceId] The Redshift Namespace ID.
  /// [namespaceName] Required.
  /// [region] Required.
  GetNamespaceResult({
    required this.adminUsername,
    required this.arn,
    required this.dbName,
    required this.defaultIamRoleArn,
    required this.iamRoles,
    required this.id,
    required this.kmsKeyId,
    required this.logExports,
    required this.namespaceId,
    required this.namespaceName,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'arn': arn,
      'dbName': dbName,
      'defaultIamRoleArn': defaultIamRoleArn,
      'iamRoles': iamRoles,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'logExports': logExports,
      'namespaceId': namespaceId,
      'namespaceName': namespaceName,
      'region': region,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      adminUsername: map['adminUsername'] as String,
      arn: map['arn'] as String,
      dbName: map['dbName'] as String,
      defaultIamRoleArn: map['defaultIamRoleArn'] as String,
      iamRoles: (map['iamRoles'] as List).cast<String>(),
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      logExports: (map['logExports'] as List).cast<String>(),
      namespaceId: map['namespaceId'] as String,
      namespaceName: map['namespaceName'] as String,
      region: map['region'] as String,
    );
  }
}
