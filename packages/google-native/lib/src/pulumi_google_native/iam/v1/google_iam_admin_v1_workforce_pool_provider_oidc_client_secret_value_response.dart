// ignore_for_file: unused_element, unnecessary_cast

/// Representation of the value of the client secret.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse {
  /// Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  final String plainText;

  /// A thumbprint to represent the current client secret value.
  final String thumbprint;

  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse({
    required this.plainText,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['plainText'] = plainText;
    map['thumbprint'] = thumbprint;
    return map;
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse(
      plainText: map['plainText'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}
