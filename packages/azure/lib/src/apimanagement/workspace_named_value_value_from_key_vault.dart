// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceNamedValueValueFromKeyVault {
  /// The client ID of the User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used if not specified.
  final String? identityClientId;
  /// The resource ID of the Key Vault Secret.
  final String secretId;

  /// Creates a new [WorkspaceNamedValueValueFromKeyVault].
  /// [identityClientId] The client ID of the User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used if not specified.
  /// [secretId] The resource ID of the Key Vault Secret.
  WorkspaceNamedValueValueFromKeyVault({
    this.identityClientId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'secretId': secretId,
    };
  }

  factory WorkspaceNamedValueValueFromKeyVault.fromMap(Map<String, dynamic> map) {
    return WorkspaceNamedValueValueFromKeyVault(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      secretId: map['secretId'] as String,
    );
  }
}

