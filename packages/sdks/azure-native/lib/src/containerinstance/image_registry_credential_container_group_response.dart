// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image registry credential.
class ImageRegistryCredentialContainerGroupResponse {
  /// The identity for the private registry.
  final pulumi.Input<String>? identity;
  /// The identity URL for the private registry.
  final pulumi.Input<String>? identityUrl;
  /// The password for the private registry.
  final pulumi.Input<String>? password;
  /// The Docker image registry server without a protocol such as "http" and "https".
  final pulumi.Input<String> server;
  /// The username for the private registry.
  final pulumi.Input<String>? username;

  /// Creates a new [ImageRegistryCredentialContainerGroupResponse].
  /// [identity] The identity for the private registry.
  /// [identityUrl] The identity URL for the private registry.
  /// [password] The password for the private registry.
  /// [server] The Docker image registry server without a protocol such as "http" and "https".
  /// [username] The username for the private registry.
  const ImageRegistryCredentialContainerGroupResponse({
    this.identity,
    this.identityUrl,
    this.password,
    required this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'identityUrl': ?identityUrl,
      'password': ?password,
      'server': server,
      'username': ?username,
    };
  }

  factory ImageRegistryCredentialContainerGroupResponse.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredentialContainerGroupResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityUrl: (() { final guardedValue = map['identityUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
