// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batch processor.
class BatchProcessorResponse {
  /// Size of the batch.
  final pulumi.Input<int?>? batchSize;
  /// Timeout in milliseconds.
  final pulumi.Input<int?>? timeout;

  /// Creates a new [BatchProcessorResponse].
  /// [batchSize] Size of the batch.
  /// [timeout] Timeout in milliseconds.
  BatchProcessorResponse({
    pulumi.Input<int?>? batchSize,
    pulumi.Input<int?>? timeout,
  }) : batchSize = batchSize ?? pulumi.Input.fromValue(8192), timeout = timeout ?? pulumi.Input.fromValue(200);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'timeout': ?timeout,
    };
  }

  factory BatchProcessorResponse.fromMap(Map<String, dynamic> map) {
    return BatchProcessorResponse(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
