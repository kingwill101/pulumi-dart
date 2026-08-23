// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploaded Java source code binary for a deployment
class SourceUploadedUserSourceInfoResponse {
  /// Selector for the artifact to be used for the deployment for multi-module projects. This should be
  /// the relative path to the target module/project.
  final pulumi.Input<String>? artifactSelector;
  /// Relative path of the storage which stores the source
  final pulumi.Input<String>? relativePath;
  /// Runtime version of the source file
  final pulumi.Input<String>? runtimeVersion;
  /// Type of the source uploaded
  /// Expected value is 'Source'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

  /// Creates a new [SourceUploadedUserSourceInfoResponse].
  /// [artifactSelector] Selector for the artifact to be used for the deployment for multi-module projects. This should be
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the source file
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  const SourceUploadedUserSourceInfoResponse({
    this.artifactSelector,
    this.relativePath,
    this.runtimeVersion,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactSelector': ?artifactSelector,
      'relativePath': ?relativePath,
      'runtimeVersion': ?runtimeVersion,
      'type': type,
      'version': ?version,
    };
  }

  factory SourceUploadedUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return SourceUploadedUserSourceInfoResponse(
      artifactSelector: (() { final guardedValue = map['artifactSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
