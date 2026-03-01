// ignore_for_file: unused_element, unnecessary_cast


class DeploymentArtifactPythonArtifact {
  /// Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  final List<String>? additionalDependencies;
  /// URL paths of dependent Python archive files
  final List<String>? additionalPythonArchives;
  /// URL paths of dependent Python library files
  final List<String>? additionalPythonLibraries;
  /// Entry module for Python
  final String? entryModule;
  /// Startup arguments
  final String? mainArgs;
  /// Full URL path of the Python job
  final String? pythonArtifactUri;

  /// Creates a new [DeploymentArtifactPythonArtifact].
  /// [additionalDependencies] Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  /// [additionalPythonArchives] URL paths of dependent Python archive files
  /// [additionalPythonLibraries] URL paths of dependent Python library files
  /// [entryModule] Entry module for Python
  /// [mainArgs] Startup arguments
  /// [pythonArtifactUri] Full URL path of the Python job
  DeploymentArtifactPythonArtifact({
    this.additionalDependencies,
    this.additionalPythonArchives,
    this.additionalPythonLibraries,
    this.entryModule,
    this.mainArgs,
    this.pythonArtifactUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDependencies': ?additionalDependencies,
      'additionalPythonArchives': ?additionalPythonArchives,
      'additionalPythonLibraries': ?additionalPythonLibraries,
      'entryModule': ?entryModule,
      'mainArgs': ?mainArgs,
      'pythonArtifactUri': ?pythonArtifactUri,
    };
  }

  factory DeploymentArtifactPythonArtifact.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifactPythonArtifact(
      additionalDependencies: map['additionalDependencies'] == null ? null : (map['additionalDependencies'] as List).cast<String>(),
      additionalPythonArchives: map['additionalPythonArchives'] == null ? null : (map['additionalPythonArchives'] as List).cast<String>(),
      additionalPythonLibraries: map['additionalPythonLibraries'] == null ? null : (map['additionalPythonLibraries'] as List).cast<String>(),
      entryModule: map['entryModule'] == null ? null : map['entryModule'] as String,
      mainArgs: map['mainArgs'] == null ? null : map['mainArgs'] as String,
      pythonArtifactUri: map['pythonArtifactUri'] == null ? null : map['pythonArtifactUri'] as String,
    );
  }
}

