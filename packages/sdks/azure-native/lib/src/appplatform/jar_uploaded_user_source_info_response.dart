// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploaded Jar binary for a deployment
class JarUploadedUserSourceInfoResponse {
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

  /// Creates a new [JarUploadedUserSourceInfoResponse].
  /// [jvmOptions] JVM parameter
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the Jar file
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  JarUploadedUserSourceInfoResponse({
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

  factory JarUploadedUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return JarUploadedUserSourceInfoResponse(
      jvmOptions: map['jvmOptions'] == null ? null : (map['jvmOptions'] as String).input(),
      relativePath: map['relativePath'] == null ? null : (map['relativePath'] as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

