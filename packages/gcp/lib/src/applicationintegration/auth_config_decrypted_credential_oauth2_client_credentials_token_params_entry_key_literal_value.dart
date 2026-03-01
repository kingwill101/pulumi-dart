// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue {
  /// String.
  final String? stringValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue].
  /// [stringValue] String.
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue({
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValue': ?stringValue};
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue(
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
