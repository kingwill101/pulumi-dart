// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetContentZip {
  /// Base64-encoded ZIP archive. Use `filebase64()` to load a local ZIP file.
  final pulumi.Input<String> zipFile;

  /// Creates a new [AssetContentZip].
  /// [zipFile] Base64-encoded ZIP archive. Use `filebase64()` to load a local ZIP file.
  const AssetContentZip({
    required this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zipFile': zipFile,
    };
  }

  factory AssetContentZip.fromMap(Map<String, dynamic> map) {
    return AssetContentZip(
      zipFile: pulumi.Input.fromValue(map['zipFile'] as String),
    );
  }
}
