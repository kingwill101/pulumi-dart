// ignore_for_file: unused_element, unnecessary_cast


class NamedValueValueFromKeyVault {
  /// The client ID of User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used in absence.
  final String? identityClientId;
  /// The resource ID of the Key Vault Secret.
  final String secretId;

  /// Creates a new [NamedValueValueFromKeyVault].
  /// [identityClientId] The client ID of User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used in absence.
  /// [secretId] The resource ID of the Key Vault Secret.
  NamedValueValueFromKeyVault({
    this.identityClientId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'secretId': secretId,
    };
  }

  factory NamedValueValueFromKeyVault.fromMap(Map<String, dynamic> map) {
    return NamedValueValueFromKeyVault(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      secretId: map['secretId'] as String,
    );
  }
}

