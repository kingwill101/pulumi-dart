// ignore_for_file: unused_element, unnecessary_cast

import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_value_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue {
  /// Passing a literal value
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue? literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue].
  /// [literalValue] Passing a literal value
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?literalValue == null ? null : literalValue!.toMap(),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue(
      literalValue: map['literalValue'] == null ? null : AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue.fromMap((map['literalValue'] as Map).cast<String, dynamic>()),
    );
  }
}

