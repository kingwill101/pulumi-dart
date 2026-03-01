// ignore_for_file: unused_element, unnecessary_cast


/// Concurrent publishing configuration.
class ConcurrencyConfigurationResponse {
  /// Size of the queue for log batches.
  final int? batchQueueSize;
  /// Number of parallel workers processing the log queues.
  final int? workerCount;

  /// Creates a new [ConcurrencyConfigurationResponse].
  /// [batchQueueSize] Size of the queue for log batches.
  /// [workerCount] Number of parallel workers processing the log queues.
  ConcurrencyConfigurationResponse({
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
      batchQueueSize: map['batchQueueSize'] == null ? null : map['batchQueueSize'] as int,
      workerCount: map['workerCount'] == null ? null : map['workerCount'] as int,
    );
  }
}

