// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceAzureSqlDatabaseKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores SQL Server password.
  final String secretName;

  /// Creates a new [LinkedServiceAzureSqlDatabaseKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores SQL Server password.
  LinkedServiceAzureSqlDatabaseKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureSqlDatabaseKeyVaultPassword(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

