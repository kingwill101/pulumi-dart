// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batch processor.
class BatchProcessorResponse {
  /// Size of the batch.
  final pulumi.Input<int>? batchSize;
  /// Timeout in milliseconds.
  final pulumi.Input<int>? timeout;

  /// Creates a new [BatchProcessorResponse].
  /// [batchSize] Size of the batch.
  /// [timeout] Timeout in milliseconds.
  const BatchProcessorResponse({
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
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
