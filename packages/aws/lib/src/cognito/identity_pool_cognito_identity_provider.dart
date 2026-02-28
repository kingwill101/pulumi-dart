// ignore_for_file: unused_element, unnecessary_cast

class IdentityPoolCognitoIdentityProvider {
  /// The client ID for the Amazon Cognito Identity User Pool.
  final String? clientId;

  /// The provider name for an Amazon Cognito Identity User Pool.
  final String? providerName;

  /// Whether server-side token validation is enabled for the identity provider’s token or not.
  final bool? serverSideTokenCheck;

  /// Creates a new [IdentityPoolCognitoIdentityProvider].
  /// [clientId] The client ID for the Amazon Cognito Identity User Pool.
  /// [providerName] The provider name for an Amazon Cognito Identity User Pool.
  /// [serverSideTokenCheck] Whether server-side token validation is enabled for the identity provider’s token or not.
  IdentityPoolCognitoIdentityProvider({
    this.clientId,
    this.providerName,
    this.serverSideTokenCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    final serverSideTokenCheckValue = serverSideTokenCheck;
    if (serverSideTokenCheckValue != null) {
      map['serverSideTokenCheck'] = serverSideTokenCheckValue;
    }
    return map;
  }

  factory IdentityPoolCognitoIdentityProvider.fromMap(
      Map<String, dynamic> map) {
    return IdentityPoolCognitoIdentityProvider(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      providerName:
          map['providerName'] == null ? null : map['providerName'] as String,
      serverSideTokenCheck: map['serverSideTokenCheck'] == null
          ? null
          : map['serverSideTokenCheck'] as bool,
    );
  }
}
