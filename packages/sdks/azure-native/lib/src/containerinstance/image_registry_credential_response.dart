// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image registry credential.
class ImageRegistryCredentialResponse {
  /// The identity for the private registry.
  final pulumi.Input<String>? identity;
  /// The identity URL for the private registry.
  final pulumi.Input<String>? identityUrl;
  /// The password for the private registry.
  final pulumi.Input<String>? password;
  /// The reference for the private registry password.
  final pulumi.Input<String>? passwordReference;
  /// The Docker image registry server without a protocol such as "http" and "https".
  final pulumi.Input<String> server;
  /// The username for the private registry.
  final pulumi.Input<String>? username;

  /// Creates a new [ImageRegistryCredentialResponse].
  /// [identity] The identity for the private registry.
  /// [identityUrl] The identity URL for the private registry.
  /// [password] The password for the private registry.
  /// [passwordReference] The reference for the private registry password.
  /// [server] The Docker image registry server without a protocol such as "http" and "https".
  /// [username] The username for the private registry.
  const ImageRegistryCredentialResponse({
    this.identity,
    this.identityUrl,
    this.password,
    this.passwordReference,
    required this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'identityUrl': ?identityUrl,
      'password': ?password,
      'passwordReference': ?passwordReference,
      'server': server,
      'username': ?username,
    };
  }

  factory ImageRegistryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredentialResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityUrl: (() { final guardedValue = map['identityUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordReference: (() { final guardedValue = map['passwordReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
