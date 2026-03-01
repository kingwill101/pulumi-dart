// ignore_for_file: unused_element, unnecessary_cast


class SourceControlGithubActionConfigurationContainerConfiguration {
  /// The image name for the build. Changing this forces a new resource to be created.
  final String imageName;
  /// The password used to upload the image to the container registry. Changing this forces a new resource to be created.
  final String? registryPassword;
  /// The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
  final String registryUrl;
  /// The username used to upload the image to the container registry. Changing this forces a new resource to be created.
  final String? registryUsername;

  /// Creates a new [SourceControlGithubActionConfigurationContainerConfiguration].
  /// [imageName] The image name for the build. Changing this forces a new resource to be created.
  /// [registryPassword] The password used to upload the image to the container registry. Changing this forces a new resource to be created.
  /// [registryUrl] The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
  /// [registryUsername] The username used to upload the image to the container registry. Changing this forces a new resource to be created.
  SourceControlGithubActionConfigurationContainerConfiguration({
    required this.imageName,
    this.registryPassword,
    required this.registryUrl,
    this.registryUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'registryPassword': ?registryPassword,
      'registryUrl': registryUrl,
      'registryUsername': ?registryUsername,
    };
  }

  factory SourceControlGithubActionConfigurationContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlGithubActionConfigurationContainerConfiguration(
      imageName: map['imageName'] as String,
      registryPassword: map['registryPassword'] == null ? null : map['registryPassword'] as String,
      registryUrl: map['registryUrl'] as String,
      registryUsername: map['registryUsername'] == null ? null : map['registryUsername'] as String,
    );
  }
}

