// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Concurrent publishing configuration.
class ConcurrencyConfiguration {
  /// Size of the queue for log batches.
  final pulumi.Input<int>? batchQueueSize;
  /// Number of parallel workers processing the log queues.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [ConcurrencyConfiguration].
  /// [batchQueueSize] Size of the queue for log batches.
  /// [workerCount] Number of parallel workers processing the log queues.
  ConcurrencyConfiguration({
    this.batchQueueSize,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchQueueSize': ?batchQueueSize,
      'workerCount': ?workerCount,
    };
  }

  factory ConcurrencyConfiguration.fromMap(Map<String, dynamic> map) {
    return ConcurrencyConfiguration(
      batchQueueSize: map['batchQueueSize'] == null ? null : (map['batchQueueSize'] as int).input(),
      workerCount: map['workerCount'] == null ? null : (map['workerCount'] as int).input(),
    );
  }
}

