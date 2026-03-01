// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceSynapseKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores Synapse password.
  final String secretName;

  /// Creates a new [LinkedServiceSynapseKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores Synapse password.
  LinkedServiceSynapseKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSynapseKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSynapseKeyVaultPassword(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

