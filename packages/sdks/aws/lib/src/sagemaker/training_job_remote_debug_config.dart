// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobRemoteDebugConfig {
  /// Whether to enable remote debugging for the training job.
  final pulumi.Input<bool?>? enableRemoteDebug;

  /// Creates a new [TrainingJobRemoteDebugConfig].
  /// [enableRemoteDebug] Whether to enable remote debugging for the training job.
  const TrainingJobRemoteDebugConfig({
    this.enableRemoteDebug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRemoteDebug': ?enableRemoteDebug,
    };
  }

  factory TrainingJobRemoteDebugConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobRemoteDebugConfig(
      enableRemoteDebug: (() { final guardedValue = map['enableRemoteDebug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
