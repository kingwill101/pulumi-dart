// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerEventBatchingCondition {
  /// Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires.
  final pulumi.Input<int> batchSize;
  /// Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is `900`.
  final pulumi.Input<int>? batchWindow;

  /// Creates a new [TriggerEventBatchingCondition].
  /// [batchSize] Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires.
  /// [batchWindow] Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is `900`.
  const TriggerEventBatchingCondition({
    required this.batchSize,
    this.batchWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': batchSize,
      'batchWindow': ?batchWindow,
    };
  }

  factory TriggerEventBatchingCondition.fromMap(Map<String, dynamic> map) {
    return TriggerEventBatchingCondition(
      batchSize: pulumi.Input.fromValue(map['batchSize'] as int),
      batchWindow: (() { final guardedValue = map['batchWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

