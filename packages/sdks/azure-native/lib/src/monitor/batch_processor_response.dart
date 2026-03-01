// ignore_for_file: unused_element, unnecessary_cast


/// Batch processor.
class BatchProcessorResponse {
  /// Size of the batch.
  final int? batchSize;
  /// Timeout in milliseconds.
  final int? timeout;

  /// Creates a new [BatchProcessorResponse].
  /// [batchSize] Size of the batch.
  /// [timeout] Timeout in milliseconds.
  BatchProcessorResponse({
    this.batchSize,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'timeout': ?timeout,
    };
  }

  factory BatchProcessorResponse.fromMap(Map<String, dynamic> map) {
    return BatchProcessorResponse(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

