// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source with uploaded location
class UploadedUserSourceInfoResponse {
  /// Relative path of the storage which stores the source
  final pulumi.Input<String>? relativePath;
  /// Type of the source uploaded
  /// Expected value is 'UploadedUserSourceInfo'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

  /// Creates a new [UploadedUserSourceInfoResponse].
  /// [relativePath] Relative path of the storage which stores the source
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  UploadedUserSourceInfoResponse({
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

  factory UploadedUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return UploadedUserSourceInfoResponse(
      relativePath: map['relativePath'] == null ? null : (map['relativePath'] as String).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

