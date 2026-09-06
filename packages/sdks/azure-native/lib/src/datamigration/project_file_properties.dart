// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base class for file properties.
class ProjectFileProperties {
  /// Optional File extension. If submitted it should not have a leading period and must match the extension from filePath.
  final pulumi.Input<String?>? extension;
  /// Relative path of this file resource. This property can be set when creating or updating the file resource.
  final pulumi.Input<String?>? filePath;
  /// File content type. This property can be modified to reflect the file content type.
  final pulumi.Input<String?>? mediaType;

  /// Creates a new [ProjectFileProperties].
  /// [extension] Optional File extension. If submitted it should not have a leading period and must match the extension from filePath.
  /// [filePath] Relative path of this file resource. This property can be set when creating or updating the file resource.
  /// [mediaType] File content type. This property can be modified to reflect the file content type.
  const ProjectFileProperties({
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
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mediaType: (() { final guardedValue = map['mediaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
