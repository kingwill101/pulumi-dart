// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_content_file_body.dart';

class AssetContentFile {
  /// File content. See `body` Block below.
  final pulumi.Input<AssetContentFileBody> body;
  /// JSON metadata for the file.
  final pulumi.Input<String?>? metadata;
  /// Path of the file within the asset.
  final pulumi.Input<String> path;

  /// Creates a new [AssetContentFile].
  /// [body] File content. See `body` Block below.
  /// [metadata] JSON metadata for the file.
  /// [path] Path of the file within the asset.
  const AssetContentFile({
    required this.body,
    this.metadata,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': pulumi.Input.mapInputValue<AssetContentFileBody, Map<String, dynamic>>(body, (value) => value.toMap()),
      'metadata': ?metadata,
      'path': path,
    };
  }

  factory AssetContentFile.fromMap(Map<String, dynamic> map) {
    return AssetContentFile(
      body: pulumi.Input.fromValue(AssetContentFileBody.fromMap((map['body']! as Map).cast<String, dynamic>())),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
