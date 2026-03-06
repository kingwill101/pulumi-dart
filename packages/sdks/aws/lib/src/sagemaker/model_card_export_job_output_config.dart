// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelCardExportJobOutputConfig {
  /// Amazon S3 output path.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [ModelCardExportJobOutputConfig].
  /// [s3OutputPath] Amazon S3 output path.
  const ModelCardExportJobOutputConfig({
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3OutputPath': s3OutputPath,
    };
  }

  factory ModelCardExportJobOutputConfig.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobOutputConfig(
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}

