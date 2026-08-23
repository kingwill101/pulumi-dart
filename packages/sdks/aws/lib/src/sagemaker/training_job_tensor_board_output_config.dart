// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobTensorBoardOutputConfig {
  /// Local path where TensorBoard output is written.
  final pulumi.Input<String>? localPath;
  /// S3 URI where TensorBoard output is stored.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [TrainingJobTensorBoardOutputConfig].
  /// [localPath] Local path where TensorBoard output is written.
  /// [s3OutputPath] S3 URI where TensorBoard output is stored.
  const TrainingJobTensorBoardOutputConfig({
    this.localPath,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localPath': ?localPath,
      's3OutputPath': s3OutputPath,
    };
  }

  factory TrainingJobTensorBoardOutputConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobTensorBoardOutputConfig(
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}
