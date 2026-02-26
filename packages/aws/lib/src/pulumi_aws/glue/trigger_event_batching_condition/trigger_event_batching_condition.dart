// ignore_for_file: unused_element, unnecessary_cast

class TriggerEventBatchingCondition {
  /// Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires.
  final int batchSize;

  /// Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span>.
  final int? batchWindow;

  TriggerEventBatchingCondition({
    required this.batchSize,
    this.batchWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batchSize'] = batchSize;
    final batchWindowValue = batchWindow;
    if (batchWindowValue != null) {
      map['batchWindow'] = batchWindowValue;
    }
    return map;
  }

  factory TriggerEventBatchingCondition.fromMap(Map<String, dynamic> map) {
    return TriggerEventBatchingCondition(
      batchSize: map['batchSize'] as int,
      batchWindow:
          map['batchWindow'] == null ? null : map['batchWindow'] as int,
    );
  }
}
