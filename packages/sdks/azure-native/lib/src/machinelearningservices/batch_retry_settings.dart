// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Retry settings for a batch inference operation.
class BatchRetrySettings {
  /// Maximum retry count for a mini-batch
  final pulumi.Input<int>? maxRetries;
  /// Invocation timeout for a mini-batch, in ISO 8601 format.
  final pulumi.Input<String>? timeout;

  /// Creates a new [BatchRetrySettings].
  /// [maxRetries] Maximum retry count for a mini-batch
  /// [timeout] Invocation timeout for a mini-batch, in ISO 8601 format.
  const BatchRetrySettings({
    this.maxRetries,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetries': ?maxRetries,
      'timeout': ?timeout,
    };
  }

  factory BatchRetrySettings.fromMap(Map<String, dynamic> map) {
    return BatchRetrySettings(
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

