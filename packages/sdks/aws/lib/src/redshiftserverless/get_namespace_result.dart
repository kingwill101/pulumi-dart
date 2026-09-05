// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The username of the administrator for the first database created in the namespace.
  final String? adminUsername;
  /// ARN of the Redshift Serverless Namespace.
  final String? arn;
  /// The name of the first database created in the namespace.
  final String? dbName;
  /// ARN of the IAM role to set as a default in the namespace. When specifying `defaultIamRoleArn`, it also must be part of `iamRoles`.
  final String? defaultIamRoleArn;
  /// A list of IAM roles to associate with the namespace.
  final List<String>? iamRoles;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the Amazon Web Services KMS key used to encrypt your data.
  final String? kmsKeyId;
  /// The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  final List<String>? logExports;
  /// The Redshift Namespace ID.
  final String? namespaceId;
  final String? namespaceName;
  final String? region;

  /// Creates a new [GetNamespaceResult].
  /// [adminUsername] The username of the administrator for the first database created in the namespace.
  /// [arn] ARN of the Redshift Serverless Namespace.
  /// [dbName] The name of the first database created in the namespace.
  /// [defaultIamRoleArn] ARN of the IAM role to set as a default in the namespace. When specifying `defaultIamRoleArn`, it also must be part of `iamRoles`.
  /// [iamRoles] A list of IAM roles to associate with the namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN of the Amazon Web Services KMS key used to encrypt your data.
  /// [logExports] The types of logs the namespace can export. Available export types are `userlog`, `connectionlog`, and `useractivitylog`.
  /// [namespaceId] The Redshift Namespace ID.
  /// [namespaceName] Optional.
  /// [region] Optional.
  const GetNamespaceResult({
    this.adminUsername,
    this.arn,
    this.dbName,
    this.defaultIamRoleArn,
    this.iamRoles,
    this.id,
    this.kmsKeyId,
    this.logExports,
    this.namespaceId,
    this.namespaceName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'arn': ?arn,
      'dbName': ?dbName,
      'defaultIamRoleArn': ?defaultIamRoleArn,
      'iamRoles': ?iamRoles,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'logExports': ?logExports,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'region': ?region,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultIamRoleArn: (() { final guardedValue = map['defaultIamRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logExports: (() { final guardedValue = map['logExports']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
