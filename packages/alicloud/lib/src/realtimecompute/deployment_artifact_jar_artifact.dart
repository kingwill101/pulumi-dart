// ignore_for_file: unused_element, unnecessary_cast


class DeploymentArtifactJarArtifact {
  /// Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  final List<String>? additionalDependencies;
  /// Main class; you must specify the fully qualified class name
  final String? entryClass;
  /// Full URL path of the JAR job
  final String? jarUri;
  /// Startup arguments
  final String? mainArgs;

  /// Creates a new [DeploymentArtifactJarArtifact].
  /// [additionalDependencies] Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  /// [entryClass] Main class; you must specify the fully qualified class name
  /// [jarUri] Full URL path of the JAR job
  /// [mainArgs] Startup arguments
  DeploymentArtifactJarArtifact({
    this.additionalDependencies,
    this.entryClass,
    this.jarUri,
    this.mainArgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDependencies': ?additionalDependencies,
      'entryClass': ?entryClass,
      'jarUri': ?jarUri,
      'mainArgs': ?mainArgs,
    };
  }

  factory DeploymentArtifactJarArtifact.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifactJarArtifact(
      additionalDependencies: map['additionalDependencies'] == null ? null : (map['additionalDependencies'] as List).cast<String>(),
      entryClass: map['entryClass'] == null ? null : map['entryClass'] as String,
      jarUri: map['jarUri'] == null ? null : map['jarUri'] as String,
      mainArgs: map['mainArgs'] == null ? null : map['mainArgs'] as String,
    );
  }
}

