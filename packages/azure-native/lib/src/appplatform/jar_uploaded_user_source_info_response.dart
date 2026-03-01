// ignore_for_file: unused_element, unnecessary_cast


/// Uploaded Jar binary for a deployment
class JarUploadedUserSourceInfoResponse {
  /// JVM parameter
  final String? jvmOptions;
  /// Relative path of the storage which stores the source
  final String? relativePath;
  /// Runtime version of the Jar file
  final String? runtimeVersion;
  /// Type of the source uploaded
  /// Expected value is 'Jar'.
  final String type;
  /// Version of the source
  final String? version;

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
      jvmOptions: map['jvmOptions'] == null ? null : map['jvmOptions'] as String,
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

