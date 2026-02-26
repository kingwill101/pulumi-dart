// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersSqsQueueParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final int? batchSize;

  /// The maximum length of a time to wait for events. Maximum value of 300.
  final int? maximumBatchingWindowInSeconds;

  PipeSourceParametersSqsQueueParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    final maximumBatchingWindowInSecondsValue = maximumBatchingWindowInSeconds;
    if (maximumBatchingWindowInSecondsValue != null) {
      map['maximumBatchingWindowInSeconds'] =
          maximumBatchingWindowInSecondsValue;
    }
    return map;
  }

  factory PipeSourceParametersSqsQueueParameters.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersSqsQueueParameters(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      maximumBatchingWindowInSeconds:
          map['maximumBatchingWindowInSeconds'] == null
              ? null
              : map['maximumBatchingWindowInSeconds'] as int,
    );
  }
}
