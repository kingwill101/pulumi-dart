// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatusRunning {
  /// Number of job restarts
  final pulumi.Input<int>? observedFlinkJobRestarts;
  /// Flink job status
  final pulumi.Input<String>? observedFlinkJobStatus;

  /// Creates a new [JobStatusRunning].
  /// [observedFlinkJobRestarts] Number of job restarts
  /// [observedFlinkJobStatus] Flink job status
  JobStatusRunning({
    this.observedFlinkJobRestarts,
    this.observedFlinkJobStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observedFlinkJobRestarts': ?observedFlinkJobRestarts,
      'observedFlinkJobStatus': ?observedFlinkJobStatus,
    };
  }

  factory JobStatusRunning.fromMap(Map<String, dynamic> map) {
    return JobStatusRunning(
      observedFlinkJobRestarts: (() { final guardedValue = map['observedFlinkJobRestarts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      observedFlinkJobStatus: (() { final guardedValue = map['observedFlinkJobStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

