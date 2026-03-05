// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelCardExportJobExportArtifact {
  /// Amazon S3 URI of the exported model artifacts.
  final pulumi.Input<String> s3ExportArtifacts;

  /// Creates a new [ModelCardExportJobExportArtifact].
  /// [s3ExportArtifacts] Amazon S3 URI of the exported model artifacts.
  ModelCardExportJobExportArtifact({
    required this.s3ExportArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3ExportArtifacts': s3ExportArtifacts,
    };
  }

  factory ModelCardExportJobExportArtifact.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobExportArtifact(
      s3ExportArtifacts: pulumi.Input.fromValue(map['s3ExportArtifacts'] as String),
    );
  }
}

