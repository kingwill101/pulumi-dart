// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceSnowflakeKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores Snowflake password.
  final String secretName;

  /// Creates a new [LinkedServiceSnowflakeKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores Snowflake password.
  LinkedServiceSnowflakeKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSnowflakeKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSnowflakeKeyVaultPassword(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

