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
      jvmOptions: (() { final guardedValue = map['jvmOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

