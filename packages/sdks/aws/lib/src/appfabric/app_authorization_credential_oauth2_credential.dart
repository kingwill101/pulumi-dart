// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationCredentialOauth2Credential {
  /// The client ID of the client application.
  final pulumi.Input<String> clientId;
  /// The client secret of the client application.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [AppAuthorizationCredentialOauth2Credential].
  /// [clientId] The client ID of the client application.
  /// [clientSecret] The client secret of the client application.
  const AppAuthorizationCredentialOauth2Credential({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory AppAuthorizationCredentialOauth2Credential.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationCredentialOauth2Credential(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}

