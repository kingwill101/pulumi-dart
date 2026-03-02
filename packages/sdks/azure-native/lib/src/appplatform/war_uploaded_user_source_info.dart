// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploaded War binary for a deployment
class WarUploadedUserSourceInfo {
  /// JVM parameter
  final pulumi.Input<String>? jvmOptions;
  /// Relative path of the storage which stores the source
  final pulumi.Input<String>? relativePath;
  /// Runtime version of the war file
  final pulumi.Input<String>? runtimeVersion;
  /// Server version, currently only Apache Tomcat is supported
  final pulumi.Input<String>? serverVersion;
  /// Type of the source uploaded
  /// Expected value is 'War'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

  /// Creates a new [WarUploadedUserSourceInfo].
  /// [jvmOptions] JVM parameter
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the war file
  /// [serverVersion] Server version, currently only Apache Tomcat is supported
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  WarUploadedUserSourceInfo({
    this.jvmOptions,
    this.relativePath,
    this.runtimeVersion,
    this.serverVersion,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jvmOptions': ?jvmOptions,
      'relativePath': ?relativePath,
      'runtimeVersion': ?runtimeVersion,
      'serverVersion': ?serverVersion,
      'type': type,
      'version': ?version,
    };
  }

  factory WarUploadedUserSourceInfo.fromMap(Map<String, dynamic> map) {
    return WarUploadedUserSourceInfo(
      jvmOptions: map['jvmOptions'] == null ? null : (map['jvmOptions']! as String).input(),
      relativePath: map['relativePath'] == null ? null : (map['relativePath']! as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion']! as String).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

