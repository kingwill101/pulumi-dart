// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The basic authentication properties for the container registry resource.
class ContainerRegistryBasicCredentials {
  /// The password of the Container Registry.
  final pulumi.Input<String> password;
  /// The login server of the Container Registry.
  final pulumi.Input<String> server;
  /// The credential type of the container registry credentials.
  /// Expected value is 'BasicAuth'.
  final pulumi.Input<String> type;
  /// The username of the Container Registry.
  final pulumi.Input<String> username;

  /// Creates a new [ContainerRegistryBasicCredentials].
  /// [password] The password of the Container Registry.
  /// [server] The login server of the Container Registry.
  /// [type] The credential type of the container registry credentials.
  /// [username] The username of the Container Registry.
  ContainerRegistryBasicCredentials({
    required this.password,
    required this.server,
    required this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'server': server,
      'type': type,
      'username': username,
    };
  }

  factory ContainerRegistryBasicCredentials.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryBasicCredentials(
      password: (map['password'] as String).input(),
      server: (map['server'] as String).input(),
      type: (map['type'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

