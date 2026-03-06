// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File source details.
class FileSourceInfoResponse {
  /// File share ID.
  final pulumi.Input<String> shareId;

  /// Creates a new [FileSourceInfoResponse].
  /// [shareId] File share ID.
  const FileSourceInfoResponse({
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareId': shareId,
    };
  }

  factory FileSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return FileSourceInfoResponse(
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}

