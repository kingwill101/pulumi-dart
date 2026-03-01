// ignore_for_file: unused_element, unnecessary_cast


/// Base class for file properties.
class ProjectFileProperties {
  /// Optional File extension. If submitted it should not have a leading period and must match the extension from filePath.
  final String? extension;
  /// Relative path of this file resource. This property can be set when creating or updating the file resource.
  final String? filePath;
  /// File content type. This property can be modified to reflect the file content type.
  final String? mediaType;

  /// Creates a new [ProjectFileProperties].
  /// [extension] Optional File extension. If submitted it should not have a leading period and must match the extension from filePath.
  /// [filePath] Relative path of this file resource. This property can be set when creating or updating the file resource.
  /// [mediaType] File content type. This property can be modified to reflect the file content type.
  ProjectFileProperties({
    this.extension,
    this.filePath,
    this.mediaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extension': ?extension,
      'filePath': ?filePath,
      'mediaType': ?mediaType,
    };
  }

  factory ProjectFileProperties.fromMap(Map<String, dynamic> map) {
    return ProjectFileProperties(
      extension: map['extension'] == null ? null : map['extension'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      mediaType: map['mediaType'] == null ? null : map['mediaType'] as String,
    );
  }
}

