// ignore_for_file: unused_element, unnecessary_cast


class JobStatusRunning {
  /// Number of job restarts
  final int? observedFlinkJobRestarts;
  /// Flink job status
  final String? observedFlinkJobStatus;

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
      observedFlinkJobRestarts: map['observedFlinkJobRestarts'] == null ? null : map['observedFlinkJobRestarts'] as int,
      observedFlinkJobStatus: map['observedFlinkJobStatus'] == null ? null : map['observedFlinkJobStatus'] as String,
    );
  }
}

