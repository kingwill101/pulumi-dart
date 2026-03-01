// ignore_for_file: unused_element, unnecessary_cast


/// Batch processor.
class BatchProcessor {
  /// Size of the batch.
  final int? batchSize;
  /// Timeout in milliseconds.
  final int? timeout;

  /// Creates a new [BatchProcessor].
  /// [batchSize] Size of the batch.
  /// [timeout] Timeout in milliseconds.
  BatchProcessor({
    this.batchSize,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'timeout': ?timeout,
    };
  }

  factory BatchProcessor.fromMap(Map<String, dynamic> map) {
    return BatchProcessor(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

