// ignore_for_file: unused_element, unnecessary_cast


/// Uploaded War binary for a deployment
class WarUploadedUserSourceInfo {
  /// JVM parameter
  final String? jvmOptions;
  /// Relative path of the storage which stores the source
  final String? relativePath;
  /// Runtime version of the war file
  final String? runtimeVersion;
  /// Server version, currently only Apache Tomcat is supported
  final String? serverVersion;
  /// Type of the source uploaded
  /// Expected value is 'War'.
  final String type;
  /// Version of the source
  final String? version;

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
      jvmOptions: map['jvmOptions'] == null ? null : map['jvmOptions'] as String,
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

