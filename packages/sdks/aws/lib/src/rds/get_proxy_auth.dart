// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProxyAuth {
  /// Type of authentication that the proxy uses for connections from the proxy to the underlying database.
  final pulumi.Input<String> authScheme;
  /// Type of authentication the proxy uses for connections from clients.
  final pulumi.Input<String> clientPasswordAuthType;
  /// User-specified description about the authentication used by a proxy to log in as a specific database user.
  final pulumi.Input<String> description;
  /// Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.
  final pulumi.Input<String> iamAuth;
  /// ARN representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster.
  final pulumi.Input<String> secretArn;
  /// Name of the database user to which the proxy connects.
  final pulumi.Input<String> username;

  /// Creates a new [GetProxyAuth].
  /// [authScheme] Type of authentication that the proxy uses for connections from the proxy to the underlying database.
  /// [clientPasswordAuthType] Type of authentication the proxy uses for connections from clients.
  /// [description] User-specified description about the authentication used by a proxy to log in as a specific database user.
  /// [iamAuth] Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.
  /// [secretArn] ARN representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster.
  /// [username] Name of the database user to which the proxy connects.
  const GetProxyAuth({
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
      authScheme: pulumi.Input.fromValue(map['authScheme'] as String),
      clientPasswordAuthType: pulumi.Input.fromValue(map['clientPasswordAuthType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      iamAuth: pulumi.Input.fromValue(map['iamAuth'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
