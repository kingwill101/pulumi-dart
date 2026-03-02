// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentArtifactPythonArtifact {
  /// Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  final pulumi.Input<List<String>>? additionalDependencies;
  /// URL paths of dependent Python archive files
  final pulumi.Input<List<String>>? additionalPythonArchives;
  /// URL paths of dependent Python library files
  final pulumi.Input<List<String>>? additionalPythonLibraries;
  /// Entry module for Python
  final pulumi.Input<String>? entryModule;
  /// Startup arguments
  final pulumi.Input<String>? mainArgs;
  /// Full URL path of the Python job
  final pulumi.Input<String>? pythonArtifactUri;

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
      additionalDependencies: map['additionalDependencies'] == null ? null : ((map['additionalDependencies'] as List).cast<String>()).input(),
      additionalPythonArchives: map['additionalPythonArchives'] == null ? null : ((map['additionalPythonArchives'] as List).cast<String>()).input(),
      additionalPythonLibraries: map['additionalPythonLibraries'] == null ? null : ((map['additionalPythonLibraries'] as List).cast<String>()).input(),
      entryModule: map['entryModule'] == null ? null : (map['entryModule'] as String).input(),
      mainArgs: map['mainArgs'] == null ? null : (map['mainArgs'] as String).input(),
      pythonArtifactUri: map['pythonArtifactUri'] == null ? null : (map['pythonArtifactUri'] as String).input(),
    );
  }
}

