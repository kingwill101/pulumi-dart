// ignore_for_file: unused_element, unnecessary_cast


class CredentialServicePrincipalServicePrincipalKey {
  /// The name of the Linked Service to use for the Service Principal Key.
  final String linkedServiceName;
  /// The name of the Secret in the Key Vault.
  final String secretName;
  /// The version of the Secret in the Key Vault.
  final String? secretVersion;

  /// Creates a new [CredentialServicePrincipalServicePrincipalKey].
  /// [linkedServiceName] The name of the Linked Service to use for the Service Principal Key.
  /// [secretName] The name of the Secret in the Key Vault.
  /// [secretVersion] The version of the Secret in the Key Vault.
  CredentialServicePrincipalServicePrincipalKey({
    required this.linkedServiceName,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory CredentialServicePrincipalServicePrincipalKey.fromMap(Map<String, dynamic> map) {
    return CredentialServicePrincipalServicePrincipalKey(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}

