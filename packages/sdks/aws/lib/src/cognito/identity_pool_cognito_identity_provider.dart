// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityPoolCognitoIdentityProvider {
  /// The client ID for the Amazon Cognito Identity User Pool.
  final pulumi.Input<String>? clientId;
  /// The provider name for an Amazon Cognito Identity User Pool.
  final pulumi.Input<String>? providerName;
  /// Whether server-side token validation is enabled for the identity provider’s token or not.
  final pulumi.Input<bool>? serverSideTokenCheck;

  /// Creates a new [IdentityPoolCognitoIdentityProvider].
  /// [clientId] The client ID for the Amazon Cognito Identity User Pool.
  /// [providerName] The provider name for an Amazon Cognito Identity User Pool.
  /// [serverSideTokenCheck] Whether server-side token validation is enabled for the identity provider’s token or not.
  const IdentityPoolCognitoIdentityProvider({
    this.clientId,
    this.providerName,
    this.serverSideTokenCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'providerName': ?providerName,
      'serverSideTokenCheck': ?serverSideTokenCheck,
    };
  }

  factory IdentityPoolCognitoIdentityProvider.fromMap(Map<String, dynamic> map) {
    return IdentityPoolCognitoIdentityProvider(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverSideTokenCheck: (() { final guardedValue = map['serverSideTokenCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
