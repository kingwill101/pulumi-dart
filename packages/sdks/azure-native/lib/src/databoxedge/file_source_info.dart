// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File source details.
class FileSourceInfo {
  /// File share ID.
  final pulumi.Input<String> shareId;

  /// Creates a new [FileSourceInfo].
  /// [shareId] File share ID.
  FileSourceInfo({
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareId': shareId,
    };
  }

  factory FileSourceInfo.fromMap(Map<String, dynamic> map) {
    return FileSourceInfo(
      shareId: (map['shareId'] as String).input(),
    );
  }
}

