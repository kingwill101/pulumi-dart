// ignore_for_file: unused_element, unnecessary_cast


/// The basic authentication properties for the container registry resource.
class ContainerRegistryBasicCredentialsResponse {
  /// The login server of the Container Registry.
  final String server;
  /// The credential type of the container registry credentials.
  /// Expected value is 'BasicAuth'.
  final String type;
  /// The username of the Container Registry.
  final String username;

  /// Creates a new [ContainerRegistryBasicCredentialsResponse].
  /// [server] The login server of the Container Registry.
  /// [type] The credential type of the container registry credentials.
  /// [username] The username of the Container Registry.
  ContainerRegistryBasicCredentialsResponse({
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
      server: map['server'] as String,
      type: map['type'] as String,
      username: map['username'] as String,
    );
  }
}

