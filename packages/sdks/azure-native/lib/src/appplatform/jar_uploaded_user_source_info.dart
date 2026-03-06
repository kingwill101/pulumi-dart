// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploaded Jar binary for a deployment
class JarUploadedUserSourceInfo {
  /// JVM parameter
  final pulumi.Input<String>? jvmOptions;
  /// Relative path of the storage which stores the source
  final pulumi.Input<String>? relativePath;
  /// Runtime version of the Jar file
  final pulumi.Input<String>? runtimeVersion;
  /// Type of the source uploaded
  /// Expected value is 'Jar'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

  /// Creates a new [JarUploadedUserSourceInfo].
  /// [jvmOptions] JVM parameter
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the Jar file
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  const JarUploadedUserSourceInfo({
    this.jvmOptions,
    this.relativePath,
    this.runtimeVersion,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jvmOptions': ?jvmOptions,
      'relativePath': ?relativePath,
      'runtimeVersion': ?runtimeVersion,
      'type': type,
      'version': ?version,
    };
  }

  factory JarUploadedUserSourceInfo.fromMap(Map<String, dynamic> map) {
    return JarUploadedUserSourceInfo(
      jvmOptions: (() { final guardedValue = map['jvmOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

