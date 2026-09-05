// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobCheckpointConfig {
  /// Local path where checkpoints are written.
  final pulumi.Input<String?>? localPath;
  /// S3 URI where checkpoints are stored.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [TrainingJobCheckpointConfig].
  /// [localPath] Local path where checkpoints are written.
  /// [s3Uri] S3 URI where checkpoints are stored.
  const TrainingJobCheckpointConfig({
    this.localPath,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localPath': ?localPath,
      's3Uri': s3Uri,
    };
  }

  factory TrainingJobCheckpointConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobCheckpointConfig(
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
