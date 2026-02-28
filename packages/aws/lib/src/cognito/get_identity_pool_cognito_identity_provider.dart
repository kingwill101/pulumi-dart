// ignore_for_file: unused_element, unnecessary_cast


class GetIdentityPoolCognitoIdentityProvider {
  final String clientId;
  final String providerName;
  final bool serverSideTokenCheck;

  /// Creates a new [GetIdentityPoolCognitoIdentityProvider].
  /// [clientId] Required.
  /// [providerName] Required.
  /// [serverSideTokenCheck] Required.
  GetIdentityPoolCognitoIdentityProvider({
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
      clientId: map['clientId'] as String,
      providerName: map['providerName'] as String,
      serverSideTokenCheck: map['serverSideTokenCheck'] as bool,
    );
  }
}

