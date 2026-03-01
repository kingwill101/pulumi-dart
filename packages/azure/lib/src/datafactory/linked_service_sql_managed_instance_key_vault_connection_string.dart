// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceSqlManagedInstanceKeyVaultConnectionString {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores SQL Managed Instance connection string.
  final String secretName;

  /// Creates a new [LinkedServiceSqlManagedInstanceKeyVaultConnectionString].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores SQL Managed Instance connection string.
  LinkedServiceSqlManagedInstanceKeyVaultConnectionString({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSqlManagedInstanceKeyVaultConnectionString.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSqlManagedInstanceKeyVaultConnectionString(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

