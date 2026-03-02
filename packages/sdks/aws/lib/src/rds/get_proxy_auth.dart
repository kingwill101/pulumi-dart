// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProxyAuth {
  final pulumi.Input<String> authScheme;
  final pulumi.Input<String> clientPasswordAuthType;
  final pulumi.Input<String> description;
  final pulumi.Input<String> iamAuth;
  final pulumi.Input<String> secretArn;
  final pulumi.Input<String> username;

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
      authScheme: (map['authScheme'] as String).input(),
      clientPasswordAuthType: (map['clientPasswordAuthType'] as String).input(),
      description: (map['description'] as String).input(),
      iamAuth: (map['iamAuth'] as String).input(),
      secretArn: (map['secretArn'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

