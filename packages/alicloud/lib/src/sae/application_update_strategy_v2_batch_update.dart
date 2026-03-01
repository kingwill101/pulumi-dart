// ignore_for_file: unused_element, unnecessary_cast


class ApplicationUpdateStrategyV2BatchUpdate {
  /// The number of batches in which you want to release the instances.
  final int? batch;
  /// The batch wait time.
  final int? batchWaitTime;
  /// The processing method for the batches. Valid values: `auto` and `manual`.
  final String? releaseType;

  /// Creates a new [ApplicationUpdateStrategyV2BatchUpdate].
  /// [batch] The number of batches in which you want to release the instances.
  /// [batchWaitTime] The batch wait time.
  /// [releaseType] The processing method for the batches. Valid values: `auto` and `manual`.
  ApplicationUpdateStrategyV2BatchUpdate({
    this.batch,
    this.batchWaitTime,
    this.releaseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': ?batch,
      'batchWaitTime': ?batchWaitTime,
      'releaseType': ?releaseType,
    };
  }

  factory ApplicationUpdateStrategyV2BatchUpdate.fromMap(Map<String, dynamic> map) {
    return ApplicationUpdateStrategyV2BatchUpdate(
      batch: map['batch'] == null ? null : map['batch'] as int,
      batchWaitTime: map['batchWaitTime'] == null ? null : map['batchWaitTime'] as int,
      releaseType: map['releaseType'] == null ? null : map['releaseType'] as String,
    );
  }
}

