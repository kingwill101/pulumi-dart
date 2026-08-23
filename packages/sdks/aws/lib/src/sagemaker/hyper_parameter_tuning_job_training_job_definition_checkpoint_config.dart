// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig {
  /// Local path for checkpoints.
  final pulumi.Input<String>? localPath;
  /// S3 or HTTPS destination for checkpoints.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig].
  /// [localPath] Local path for checkpoints.
  /// [s3Uri] S3 or HTTPS destination for checkpoints.
  const HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig({
    this.localPath,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localPath': ?localPath,
      's3Uri': s3Uri,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig(
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
