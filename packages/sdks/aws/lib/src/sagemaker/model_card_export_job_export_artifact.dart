// ignore_for_file: unused_element, unnecessary_cast


class ModelCardExportJobExportArtifact {
  /// Amazon S3 URI of the exported model artifacts.
  final String s3ExportArtifacts;

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
      s3ExportArtifacts: map['s3ExportArtifacts'] as String,
    );
  }
}

