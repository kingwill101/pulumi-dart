// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_authorization_credential_api_key_credential/app_authorization_credential_api_key_credential.dart';
import '../app_authorization_credential_oauth2_credential/app_authorization_credential_oauth2_credential.dart';

class AppAuthorizationCredential {
  /// Contains API key credential information.
  final List<AppAuthorizationCredentialApiKeyCredential>? apiKeyCredentials;

  /// Contains OAuth2 client credential information.
  final AppAuthorizationCredentialOauth2Credential? oauth2Credential;

  AppAuthorizationCredential({
    this.apiKeyCredentials,
    this.oauth2Credential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyCredentialsValue = apiKeyCredentials;
    if (apiKeyCredentialsValue != null) {
      map['apiKeyCredentials'] = Input.encodeList<
              AppAuthorizationCredentialApiKeyCredential, Map<String, dynamic>>(
          apiKeyCredentialsValue, (value) => value.toMap());
    }
    final oauth2CredentialValue = oauth2Credential;
    if (oauth2CredentialValue != null) {
      map['oauth2Credential'] = oauth2CredentialValue.toMap();
    }
    return map;
  }

  factory AppAuthorizationCredential.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationCredential(
      apiKeyCredentials: map['apiKeyCredentials'] == null
          ? null
          : Input.decodeList<AppAuthorizationCredentialApiKeyCredential>(
              map['apiKeyCredentials'],
              (value) => AppAuthorizationCredentialApiKeyCredential.fromMap(
                  (value as Map).cast<String, dynamic>())),
      oauth2Credential: map['oauth2Credential'] == null
          ? null
          : AppAuthorizationCredentialOauth2Credential.fromMap(
              (map['oauth2Credential'] as Map).cast<String, dynamic>()),
    );
  }
}
