// ignore_for_file: unused_element, unnecessary_cast

class TriggerEventBatchingCondition {
  /// Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires.
  final int batchSize;

  /// Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is `900`.
  final int? batchWindow;

  /// Creates a new [TriggerEventBatchingCondition].
  /// [batchSize] Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires.
  /// [batchWindow] Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is `900`.
  TriggerEventBatchingCondition({required this.batchSize, this.batchWindow});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': batchSize,
      'batchWindow': ?batchWindow,
    };
  }

  factory TriggerEventBatchingCondition.fromMap(Map<String, dynamic> map) {
    return TriggerEventBatchingCondition(
      batchSize: map['batchSize'] as int,
      batchWindow: map['batchWindow'] == null
          ? null
          : map['batchWindow'] as int,
    );
  }
}
