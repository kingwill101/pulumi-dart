// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIdentityPoolCognitoIdentityProvider {
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> providerName;
  final pulumi.Input<bool> serverSideTokenCheck;

  /// Creates a new [GetIdentityPoolCognitoIdentityProvider].
  /// [clientId] Required.
  /// [providerName] Required.
  /// [serverSideTokenCheck] Required.
  const GetIdentityPoolCognitoIdentityProvider({
    required this.clientId,
    required this.providerName,
    required this.serverSideTokenCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'providerName': providerName,
      'serverSideTokenCheck': serverSideTokenCheck,
    };
  }

  factory GetIdentityPoolCognitoIdentityProvider.fromMap(Map<String, dynamic> map) {
    return GetIdentityPoolCognitoIdentityProvider(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      serverSideTokenCheck: pulumi.Input.fromValue(map['serverSideTokenCheck'] as bool),
    );
  }
}
