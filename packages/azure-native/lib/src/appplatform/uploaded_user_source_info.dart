// ignore_for_file: unused_element, unnecessary_cast


/// Source with uploaded location
class UploadedUserSourceInfo {
  /// Relative path of the storage which stores the source
  final String? relativePath;
  /// Type of the source uploaded
  /// Expected value is 'UploadedUserSourceInfo'.
  final String type;
  /// Version of the source
  final String? version;

  /// Creates a new [UploadedUserSourceInfo].
  /// [relativePath] Relative path of the storage which stores the source
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  UploadedUserSourceInfo({
    this.relativePath,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativePath': ?relativePath,
      'type': type,
      'version': ?version,
    };
  }

  factory UploadedUserSourceInfo.fromMap(Map<String, dynamic> map) {
    return UploadedUserSourceInfo(
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

