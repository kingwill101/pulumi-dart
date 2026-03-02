// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest {
  /// The code provided by the connector when it has been authenticated via the connected app.
  final pulumi.Input<String>? authCode;
  /// The URL to which the authentication server redirects the browser after authorization has been granted.
  final pulumi.Input<String>? redirectUri;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest].
  /// [authCode] The code provided by the connector when it has been authenticated via the connected app.
  /// [redirectUri] The URL to which the authentication server redirects the browser after authorization has been granted.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'redirectUri': ?redirectUri,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest(
      authCode: map['authCode'] == null ? null : (map['authCode'] as String).input(),
      redirectUri: map['redirectUri'] == null ? null : (map['redirectUri'] as String).input(),
    );
  }
}

