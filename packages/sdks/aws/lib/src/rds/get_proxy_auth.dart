// ignore_for_file: unused_element, unnecessary_cast


class GetProxyAuth {
  final String authScheme;
  final String clientPasswordAuthType;
  final String description;
  final String iamAuth;
  final String secretArn;
  final String username;

  /// Creates a new [GetProxyAuth].
  /// [authScheme] Required.
  /// [clientPasswordAuthType] Required.
  /// [description] Required.
  /// [iamAuth] Required.
  /// [secretArn] Required.
  /// [username] Required.
  GetProxyAuth({
    required this.authScheme,
    required this.clientPasswordAuthType,
    required this.description,
    required this.iamAuth,
    required this.secretArn,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authScheme': authScheme,
      'clientPasswordAuthType': clientPasswordAuthType,
      'description': description,
      'iamAuth': iamAuth,
      'secretArn': secretArn,
      'username': username,
    };
  }

  factory GetProxyAuth.fromMap(Map<String, dynamic> map) {
    return GetProxyAuth(
      authScheme: map['authScheme'] as String,
      clientPasswordAuthType: map['clientPasswordAuthType'] as String,
      description: map['description'] as String,
      iamAuth: map['iamAuth'] as String,
      secretArn: map['secretArn'] as String,
      username: map['username'] as String,
    );
  }
}

