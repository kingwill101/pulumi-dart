// ignore_for_file: unused_element, unnecessary_cast


/// Uploaded Java source code binary for a deployment
class SourceUploadedUserSourceInfoResponse {
  /// Selector for the artifact to be used for the deployment for multi-module projects. This should be
  /// the relative path to the target module/project.
  final String? artifactSelector;
  /// Relative path of the storage which stores the source
  final String? relativePath;
  /// Runtime version of the source file
  final String? runtimeVersion;
  /// Type of the source uploaded
  /// Expected value is 'Source'.
  final String type;
  /// Version of the source
  final String? version;

  /// Creates a new [SourceUploadedUserSourceInfoResponse].
  /// [artifactSelector] Selector for the artifact to be used for the deployment for multi-module projects. This should be
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the source file
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  SourceUploadedUserSourceInfoResponse({
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
      artifactSelector: map['artifactSelector'] == null ? null : map['artifactSelector'] as String,
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

