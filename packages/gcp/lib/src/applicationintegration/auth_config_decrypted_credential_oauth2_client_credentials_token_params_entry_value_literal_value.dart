// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue {
  /// String.
  final String? stringValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue].
  /// [stringValue] String.
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue({
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValue': ?stringValue};
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue(
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
