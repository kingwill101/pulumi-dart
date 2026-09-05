// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest {
  /// Code provided by the connector when it has been authenticated via the connected app.
  final pulumi.Input<String?>? authCode;
  /// URL to which the authentication server redirects the browser after authorization has been granted.
  final pulumi.Input<String?>? redirectUri;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest].
  /// [authCode] Code provided by the connector when it has been authenticated via the connected app.
  /// [redirectUri] URL to which the authentication server redirects the browser after authorization has been granted.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'redirectUri': ?redirectUri,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest(
      authCode: (() { final guardedValue = map['authCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUri: (() { final guardedValue = map['redirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
