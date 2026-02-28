// ignore_for_file: unused_element, unnecessary_cast

/// Representation of the value of the client secret.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue {
  /// Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  final String? plainText;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue].
  /// [plainText] Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue({
    this.plainText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final plainTextValue = plainText;
    if (plainTextValue != null) {
      map['plainText'] = plainTextValue;
    }
    return map;
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue.fromMap(
      Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue(
      plainText: map['plainText'] == null ? null : map['plainText'] as String,
    );
  }
}
