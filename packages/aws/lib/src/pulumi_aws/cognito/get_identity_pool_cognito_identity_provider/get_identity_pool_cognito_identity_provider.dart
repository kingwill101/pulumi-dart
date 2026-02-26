// ignore_for_file: unused_element, unnecessary_cast

class GetIdentityPoolCognitoIdentityProvider {
  final String clientId;
  final String providerName;
  final bool serverSideTokenCheck;

  GetIdentityPoolCognitoIdentityProvider({
    required this.clientId,
    required this.providerName,
    required this.serverSideTokenCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['providerName'] = providerName;
    map['serverSideTokenCheck'] = serverSideTokenCheck;
    return map;
  }

  factory GetIdentityPoolCognitoIdentityProvider.fromMap(
      Map<String, dynamic> map) {
    return GetIdentityPoolCognitoIdentityProvider(
      clientId: map['clientId'] as String,
      providerName: map['providerName'] as String,
      serverSideTokenCheck: map['serverSideTokenCheck'] as bool,
    );
  }
}
