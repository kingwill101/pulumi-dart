// ignore_for_file: unused_element, unnecessary_cast

import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_key_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey {
  /// Passing a literal value
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue?
  literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey].
  /// [literalValue] Passing a literal value
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?literalValue == null ? null : literalValue!.toMap(),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey(
      literalValue: map['literalValue'] == null
          ? null
          : AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue.fromMap(
              (map['literalValue'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
