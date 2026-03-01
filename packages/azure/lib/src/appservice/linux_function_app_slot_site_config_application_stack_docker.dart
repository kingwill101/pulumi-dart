// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppSlotSiteConfigApplicationStackDocker {
  /// The name of the Docker image to use.
  final String imageName;
  /// The image tag of the image to use.
  final String imageTag;
  /// The password for the account to use to connect to the registry.
  ///
  /// > **Note:** This value is required if `container_registry_use_managed_identity` is not set to `true`.
  final String? registryPassword;
  /// The URL of the docker registry.
  final String registryUrl;
  /// The username to use for connections to the registry.
  ///
  /// > **Note:** This value is required if `container_registry_use_managed_identity` is not set to `true`.
  final String? registryUsername;

  /// Creates a new [LinuxFunctionAppSlotSiteConfigApplicationStackDocker].
  /// [imageName] The name of the Docker image to use.
  /// [imageTag] The image tag of the image to use.
  /// [registryPassword] The password for the account to use to connect to the registry.
  /// [registryUrl] The URL of the docker registry.
  /// [registryUsername] The username to use for connections to the registry.
  LinuxFunctionAppSlotSiteConfigApplicationStackDocker({
    required this.imageName,
    required this.imageTag,
    this.registryPassword,
    required this.registryUrl,
    this.registryUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'imageTag': imageTag,
      'registryPassword': ?registryPassword,
      'registryUrl': registryUrl,
      'registryUsername': ?registryUsername,
    };
  }

  factory LinuxFunctionAppSlotSiteConfigApplicationStackDocker.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotSiteConfigApplicationStackDocker(
      imageName: map['imageName'] as String,
      imageTag: map['imageTag'] as String,
      registryPassword: map['registryPassword'] == null ? null : map['registryPassword'] as String,
      registryUrl: map['registryUrl'] as String,
      registryUsername: map['registryUsername'] == null ? null : map['registryUsername'] as String,
    );
  }
}

