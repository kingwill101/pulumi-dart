// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_update_strategy_v2_batch_update.dart';

class ApplicationUpdateStrategyV2 {
  /// The phased release policy. See `batch_update` below.
  final pulumi.Input<ApplicationUpdateStrategyV2BatchUpdate>? batchUpdate;
  /// The type of the release policy. Valid values: `GrayBatchUpdate` and `BatchUpdate`.
  final pulumi.Input<String>? type;

  /// Creates a new [ApplicationUpdateStrategyV2].
  /// [batchUpdate] The phased release policy. See `batch_update` below.
  /// [type] The type of the release policy. Valid values: `GrayBatchUpdate` and `BatchUpdate`.
  const ApplicationUpdateStrategyV2({
    this.batchUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchUpdate': ?pulumi.Input.mapOptionalInputValue<ApplicationUpdateStrategyV2BatchUpdate, Map<String, dynamic>>(batchUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ApplicationUpdateStrategyV2.fromMap(Map<String, dynamic> map) {
    return ApplicationUpdateStrategyV2(
      batchUpdate: (() { final guardedValue = map['batchUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationUpdateStrategyV2BatchUpdate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

