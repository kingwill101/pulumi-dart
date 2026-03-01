// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppSiteConfigApplicationStack {
  /// The docker image, including tag, used by this Linux Web App.
  final String dockerImageName;
  /// The User Name to use for authentication against the registry to pull the image.
  final String dockerRegistryPassword;
  /// The URL of the container registry where the `docker_image_name` is located.
  final String dockerRegistryUrl;
  /// The User Name to use for authentication against the registry to pull the image.
  final String dockerRegistryUsername;
  /// The version of .NET in use.
  final String dotnetVersion;
  final String goVersion;
  /// The Java server type.
  final String javaServer;
  /// The Version of the `java_server` in use.
  final String javaServerVersion;
  /// The Version of Java in use.
  final String javaVersion;
  /// The version of Node in use.
  final String nodeVersion;
  /// The version of PHP in use.
  final String phpVersion;
  /// The version of Python in use.
  final String pythonVersion;
  /// The version of Ruby in use.
  final String rubyVersion;

  /// Creates a new [GetLinuxWebAppSiteConfigApplicationStack].
  /// [dockerImageName] The docker image, including tag, used by this Linux Web App.
  /// [dockerRegistryPassword] The User Name to use for authentication against the registry to pull the image.
  /// [dockerRegistryUrl] The URL of the container registry where the `docker_image_name` is located.
  /// [dockerRegistryUsername] The User Name to use for authentication against the registry to pull the image.
  /// [dotnetVersion] The version of .NET in use.
  /// [goVersion] Required.
  /// [javaServer] The Java server type.
  /// [javaServerVersion] The Version of the `java_server` in use.
  /// [javaVersion] The Version of Java in use.
  /// [nodeVersion] The version of Node in use.
  /// [phpVersion] The version of PHP in use.
  /// [pythonVersion] The version of Python in use.
  /// [rubyVersion] The version of Ruby in use.
  GetLinuxWebAppSiteConfigApplicationStack({
    required this.dockerImageName,
    required this.dockerRegistryPassword,
    required this.dockerRegistryUrl,
    required this.dockerRegistryUsername,
    required this.dotnetVersion,
    required this.goVersion,
    required this.javaServer,
    required this.javaServerVersion,
    required this.javaVersion,
    required this.nodeVersion,
    required this.phpVersion,
    required this.pythonVersion,
    required this.rubyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImageName': dockerImageName,
      'dockerRegistryPassword': dockerRegistryPassword,
      'dockerRegistryUrl': dockerRegistryUrl,
      'dockerRegistryUsername': dockerRegistryUsername,
      'dotnetVersion': dotnetVersion,
      'goVersion': goVersion,
      'javaServer': javaServer,
      'javaServerVersion': javaServerVersion,
      'javaVersion': javaVersion,
      'nodeVersion': nodeVersion,
      'phpVersion': phpVersion,
      'pythonVersion': pythonVersion,
      'rubyVersion': rubyVersion,
    };
  }

  factory GetLinuxWebAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigApplicationStack(
      dockerImageName: map['dockerImageName'] as String,
      dockerRegistryPassword: map['dockerRegistryPassword'] as String,
      dockerRegistryUrl: map['dockerRegistryUrl'] as String,
      dockerRegistryUsername: map['dockerRegistryUsername'] as String,
      dotnetVersion: map['dotnetVersion'] as String,
      goVersion: map['goVersion'] as String,
      javaServer: map['javaServer'] as String,
      javaServerVersion: map['javaServerVersion'] as String,
      javaVersion: map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] as String,
      phpVersion: map['phpVersion'] as String,
      pythonVersion: map['pythonVersion'] as String,
      rubyVersion: map['rubyVersion'] as String,
    );
  }
}

