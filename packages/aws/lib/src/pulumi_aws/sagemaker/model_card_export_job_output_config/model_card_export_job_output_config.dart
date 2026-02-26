// ignore_for_file: unused_element, unnecessary_cast

class ModelCardExportJobOutputConfig {
  /// Amazon S3 output path.
  final String s3OutputPath;

  ModelCardExportJobOutputConfig({
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3OutputPath'] = s3OutputPath;
    return map;
  }

  factory ModelCardExportJobOutputConfig.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobOutputConfig(
      s3OutputPath: map['s3OutputPath'] as String,
    );
  }
}
