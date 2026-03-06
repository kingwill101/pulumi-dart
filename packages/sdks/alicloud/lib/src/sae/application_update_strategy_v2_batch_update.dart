// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationUpdateStrategyV2BatchUpdate {
  /// The number of batches in which you want to release the instances.
  final pulumi.Input<int>? batch;
  /// The batch wait time.
  final pulumi.Input<int>? batchWaitTime;
  /// The processing method for the batches. Valid values: `auto` and `manual`.
  final pulumi.Input<String>? releaseType;

  /// Creates a new [ApplicationUpdateStrategyV2BatchUpdate].
  /// [batch] The number of batches in which you want to release the instances.
  /// [batchWaitTime] The batch wait time.
  /// [releaseType] The processing method for the batches. Valid values: `auto` and `manual`.
  const ApplicationUpdateStrategyV2BatchUpdate({
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
      batch: (() { final guardedValue = map['batch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      batchWaitTime: (() { final guardedValue = map['batchWaitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      releaseType: (() { final guardedValue = map['releaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

