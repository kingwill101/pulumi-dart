// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceSqlServerKeyVaultConnectionString {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores SQL Server connection string.
  final String secretName;

  /// Creates a new [LinkedServiceSqlServerKeyVaultConnectionString].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores SQL Server connection string.
  LinkedServiceSqlServerKeyVaultConnectionString({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSqlServerKeyVaultConnectionString.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSqlServerKeyVaultConnectionString(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

