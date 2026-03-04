// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProxyAuth {
  /// The type of authentication that the proxy uses for connections from the proxy to the underlying database. One of `SECRETS`.
  final pulumi.Input<String>? authScheme;

  /// The type of authentication the proxy uses for connections from clients. Valid values are `MYSQL_CACHING_SHA2_PASSWORD`, `MYSQL_NATIVE_PASSWORD`, `POSTGRES_SCRAM_SHA_256`, `POSTGRES_MD5`, and `SQL_SERVER_AUTHENTICATION`.
  final pulumi.Input<String>? clientPasswordAuthType;

  /// A user-specified description about the authentication used by a proxy to log in as a specific database user.
  final pulumi.Input<String>? description;

  /// Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy. One of `DISABLED`, `REQUIRED`.
  final pulumi.Input<String>? iamAuth;

  /// The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.
  final pulumi.Input<String>? secretArn;

  /// The name of the database user to which the proxy connects.
  final pulumi.Input<String>? username;

  /// Creates a new [ProxyAuth].
  /// [authScheme] The type of authentication that the proxy uses for connections from the proxy to the underlying database. One of `SECRETS`.
  /// [clientPasswordAuthType] The type of authentication the proxy uses for connections from clients. Valid values are `MYSQL_CACHING_SHA2_PASSWORD`, `MYSQL_NATIVE_PASSWORD`, `POSTGRES_SCRAM_SHA_256`, `POSTGRES_MD5`, and `SQL_SERVER_AUTHENTICATION`.
  /// [description] A user-specified description about the authentication used by a proxy to log in as a specific database user.
  /// [iamAuth] Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy. One of `DISABLED`, `REQUIRED`.
  /// [secretArn] The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.
  /// [username] The name of the database user to which the proxy connects.
  ProxyAuth({
    this.authScheme,
    this.clientPasswordAuthType,
    this.description,
    this.iamAuth,
    this.secretArn,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authScheme': ?authScheme,
      'clientPasswordAuthType': ?clientPasswordAuthType,
      'description': ?description,
      'iamAuth': ?iamAuth,
      'secretArn': ?secretArn,
      'username': ?username,
    };
  }

  factory ProxyAuth.fromMap(Map<String, dynamic> map) {
    return ProxyAuth(
      authScheme: (() {
        final guardedValue = map['authScheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientPasswordAuthType: (() {
        final guardedValue = map['clientPasswordAuthType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamAuth: (() {
        final guardedValue = map['iamAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretArn: (() {
        final guardedValue = map['secretArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
