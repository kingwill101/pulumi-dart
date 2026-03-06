// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base class for file properties.
class ProjectFilePropertiesResponse {
  /// Optional File extension. If submitted it should not have a leading period and must match the extension from filePath.
  final pulumi.Input<String>? extension;
  /// Relative path of this file resource. This property can be set when creating or updating the file resource.
  final pulumi.Input<String>? filePath;
  /// Modification DateTime.
  final pulumi.Input<String> lastModified;
  /// File content type. This property can be modified to reflect the file content type.
  final pulumi.Input<String>? mediaType;
  /// File size.
  final pulumi.Input<double> size;

  /// Creates a new [ProjectFilePropertiesResponse].
  /// [extension] Optional File extension. If submitted it should not have a leading period and must match the extension from filePath.
  /// [filePath] Relative path of this file resource. This property can be set when creating or updating the file resource.
  /// [lastModified] Modification DateTime.
  /// [mediaType] File content type. This property can be modified to reflect the file content type.
  /// [size] File size.
  const ProjectFilePropertiesResponse({
    this.extension,
    this.filePath,
    required this.lastModified,
    this.mediaType,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extension': ?extension,
      'filePath': ?filePath,
      'lastModified': lastModified,
      'mediaType': ?mediaType,
      'size': size,
    };
  }

  factory ProjectFilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProjectFilePropertiesResponse(
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      mediaType: (() { final guardedValue = map['mediaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: pulumi.Input.fromValue(map['size'] as double),
    );
  }
}

