// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_credential_api_key_credential.dart';
import 'app_authorization_credential_oauth2_credential.dart';

class AppAuthorizationCredential {
  /// API key credential information. See `apiKeyCredential` Block for details.
  final pulumi.Input<List<AppAuthorizationCredentialApiKeyCredential>?>? apiKeyCredentials;
  /// OAuth2 client credential information. See `oauth2Credential` Block for details.
  final pulumi.Input<AppAuthorizationCredentialOauth2Credential?>? oauth2Credential;

  /// Creates a new [AppAuthorizationCredential].
  /// [apiKeyCredentials] API key credential information. See `apiKeyCredential` Block for details.
  /// [oauth2Credential] OAuth2 client credential information. See `oauth2Credential` Block for details.
  const AppAuthorizationCredential({
    this.apiKeyCredentials,
    this.oauth2Credential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyCredentials': ?pulumi.Input.mapOptionalInputValue<List<AppAuthorizationCredentialApiKeyCredential>, List<Map<String, dynamic>>>(apiKeyCredentials, (value) => pulumi.Input.encodeList<AppAuthorizationCredentialApiKeyCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauth2Credential': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationCredentialOauth2Credential, Map<String, dynamic>>(oauth2Credential, (value) => value.toMap()),
    };
  }

  factory AppAuthorizationCredential.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationCredential(
      apiKeyCredentials: (() { final guardedValue = map['apiKeyCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppAuthorizationCredentialApiKeyCredential>(guardedValue, (value) => AppAuthorizationCredentialApiKeyCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oauth2Credential: (() { final guardedValue = map['oauth2Credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAuthorizationCredentialOauth2Credential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
