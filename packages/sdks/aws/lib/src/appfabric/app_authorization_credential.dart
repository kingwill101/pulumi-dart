// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_credential_api_key_credential.dart';
import 'app_authorization_credential_oauth2_credential.dart';

class AppAuthorizationCredential {
  /// Contains API key credential information.
  final pulumi.Input<List<AppAuthorizationCredentialApiKeyCredential>>? apiKeyCredentials;
  /// Contains OAuth2 client credential information.
  final pulumi.Input<AppAuthorizationCredentialOauth2Credential>? oauth2Credential;

  /// Creates a new [AppAuthorizationCredential].
  /// [apiKeyCredentials] Contains API key credential information.
  /// [oauth2Credential] Contains OAuth2 client credential information.
  AppAuthorizationCredential({
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
      apiKeyCredentials: map['apiKeyCredentials'] == null ? null : ((pulumi.Input.decodeList<AppAuthorizationCredentialApiKeyCredential>(map['apiKeyCredentials']!, (value) => AppAuthorizationCredentialApiKeyCredential.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      oauth2Credential: map['oauth2Credential'] == null ? null : ((AppAuthorizationCredentialOauth2Credential.fromMap((map['oauth2Credential']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

