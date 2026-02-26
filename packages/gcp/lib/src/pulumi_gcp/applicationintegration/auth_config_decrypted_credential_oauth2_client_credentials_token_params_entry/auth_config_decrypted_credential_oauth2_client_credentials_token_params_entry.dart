// ignore_for_file: unused_element, unnecessary_cast

import '../auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_key/auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_key.dart';
import '../auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_value/auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_value.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry {
  /// Key of the map entry.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey?
      key;

  /// Value of the map entry.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue?
      value;

  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue.toMap();
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry(
      key: map['key'] == null
          ? null
          : AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey
              .fromMap((map['key'] as Map).cast<String, dynamic>()),
      value: map['value'] == null
          ? null
          : AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
