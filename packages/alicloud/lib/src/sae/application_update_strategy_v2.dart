// ignore_for_file: unused_element, unnecessary_cast

import 'application_update_strategy_v2_batch_update.dart';

class ApplicationUpdateStrategyV2 {
  /// The phased release policy. See `batch_update` below.
  final ApplicationUpdateStrategyV2BatchUpdate? batchUpdate;
  /// The type of the release policy. Valid values: `GrayBatchUpdate` and `BatchUpdate`.
  final String? type;

  /// Creates a new [ApplicationUpdateStrategyV2].
  /// [batchUpdate] The phased release policy. See `batch_update` below.
  /// [type] The type of the release policy. Valid values: `GrayBatchUpdate` and `BatchUpdate`.
  ApplicationUpdateStrategyV2({
    this.batchUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchUpdate': ?batchUpdate == null ? null : batchUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory ApplicationUpdateStrategyV2.fromMap(Map<String, dynamic> map) {
    return ApplicationUpdateStrategyV2(
      batchUpdate: map['batchUpdate'] == null ? null : ApplicationUpdateStrategyV2BatchUpdate.fromMap((map['batchUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

