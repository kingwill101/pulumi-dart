// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry/auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams {
  /// A list of parameter map entries.
  /// Structure is documented below.
  final List<
          AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry>?
      entries;

  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] = pulumi.Input.encodeList<
          AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry,
          Map<String, dynamic>>(entriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams(
      entries: map['entries'] == null
          ? null
          : pulumi.Input.decodeList<
                  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry>(
              map['entries'],
              (value) =>
                  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
