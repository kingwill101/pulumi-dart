// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageCodeArtifact {
  /// S3 URI of the zip archive containing the application code and Dockerfile (e.g., `s3://bucket/code.zip`).
  final pulumi.Input<String> uri;

  /// Creates a new [ImageCodeArtifact].
  /// [uri] S3 URI of the zip archive containing the application code and Dockerfile (e.g., `s3://bucket/code.zip`).
  const ImageCodeArtifact({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory ImageCodeArtifact.fromMap(Map<String, dynamic> map) {
    return ImageCodeArtifact(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
