// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The basic authentication properties for the container registry resource.
class ContainerRegistryBasicCredentialsResponse {
  /// The login server of the Container Registry.
  final pulumi.Input<String> server;
  /// The credential type of the container registry credentials.
  /// Expected value is 'BasicAuth'.
  final pulumi.Input<String> type;
  /// The username of the Container Registry.
  final pulumi.Input<String> username;

  /// Creates a new [ContainerRegistryBasicCredentialsResponse].
  /// [server] The login server of the Container Registry.
  /// [type] The credential type of the container registry credentials.
  /// [username] The username of the Container Registry.
  const ContainerRegistryBasicCredentialsResponse({
    required this.server,
    required this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'server': server,
      'type': type,
      'username': username,
    };
  }

  factory ContainerRegistryBasicCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryBasicCredentialsResponse(
      server: pulumi.Input.fromValue(map['server'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

