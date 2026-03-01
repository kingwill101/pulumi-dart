// ignore_for_file: unused_element, unnecessary_cast

class ModelCardExportJobOutputConfig {
  /// Amazon S3 output path.
  final String s3OutputPath;

  /// Creates a new [ModelCardExportJobOutputConfig].
  /// [s3OutputPath] Amazon S3 output path.
  ModelCardExportJobOutputConfig({required this.s3OutputPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3OutputPath': s3OutputPath};
  }

  factory ModelCardExportJobOutputConfig.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobOutputConfig(
      s3OutputPath: map['s3OutputPath'] as String,
    );
  }
}
