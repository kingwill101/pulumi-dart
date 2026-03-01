// ignore_for_file: unused_element, unnecessary_cast


/// Retry settings for a batch inference operation.
class BatchRetrySettingsResponse {
  /// Maximum retry count for a mini-batch
  final int? maxRetries;
  /// Invocation timeout for a mini-batch, in ISO 8601 format.
  final String? timeout;

  /// Creates a new [BatchRetrySettingsResponse].
  /// [maxRetries] Maximum retry count for a mini-batch
  /// [timeout] Invocation timeout for a mini-batch, in ISO 8601 format.
  BatchRetrySettingsResponse({
    this.maxRetries,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetries': ?maxRetries,
      'timeout': ?timeout,
    };
  }

  factory BatchRetrySettingsResponse.fromMap(Map<String, dynamic> map) {
    return BatchRetrySettingsResponse(
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

