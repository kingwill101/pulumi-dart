// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Concurrent publishing configuration.
class ConcurrencyConfigurationResponse {
  /// Size of the queue for log batches.
  final pulumi.Input<int>? batchQueueSize;
  /// Number of parallel workers processing the log queues.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [ConcurrencyConfigurationResponse].
  /// [batchQueueSize] Size of the queue for log batches.
  /// [workerCount] Number of parallel workers processing the log queues.
  const ConcurrencyConfigurationResponse({
    this.batchQueueSize,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchQueueSize': ?batchQueueSize,
      'workerCount': ?workerCount,
    };
  }

  factory ConcurrencyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConcurrencyConfigurationResponse(
      batchQueueSize: (() { final guardedValue = map['batchQueueSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
