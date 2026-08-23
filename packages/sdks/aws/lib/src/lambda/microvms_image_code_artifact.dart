// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmsImageCodeArtifact {
  /// S3 URI of the zip archive containing the application code and Dockerfile (e.g., `s3://bucket/code.zip`).
  final pulumi.Input<String> uri;

  /// Creates a new [MicrovmsImageCodeArtifact].
  /// [uri] S3 URI of the zip archive containing the application code and Dockerfile (e.g., `s3://bucket/code.zip`).
  const MicrovmsImageCodeArtifact({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory MicrovmsImageCodeArtifact.fromMap(Map<String, dynamic> map) {
    return MicrovmsImageCodeArtifact(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
