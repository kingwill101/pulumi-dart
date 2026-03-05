// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentArtifactJarArtifact {
  /// Full URL path of additional files. If you need to use dependencies such as UDFs, connectors, or formats that are not registered on the VVP platform, you must add them using this method. Dependencies already registered on the platform do not require this approach.
  final pulumi.Input<List<String>>? additionalDependencies;
  /// Main class; you must specify the fully qualified class name
  final pulumi.Input<String>? entryClass;
  /// Full URL path of the JAR job
  final pulumi.Input<String>? jarUri;
  /// Startup arguments
  final pulumi.Input<String>? mainArgs;

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
      additionalDependencies: (() { final guardedValue = map['additionalDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entryClass: (() { final guardedValue = map['entryClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jarUri: (() { final guardedValue = map['jarUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mainArgs: (() { final guardedValue = map['mainArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

