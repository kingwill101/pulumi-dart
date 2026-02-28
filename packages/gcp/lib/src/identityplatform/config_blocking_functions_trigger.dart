// ignore_for_file: unused_element, unnecessary_cast

class ConfigBlockingFunctionsTrigger {
  /// The identifier for this object. Format specified above.
  final String eventType;

  /// HTTP URI trigger for the Cloud Function.
  final String functionUri;

  /// (Output)
  /// When the trigger was changed.
  final String? updateTime;

  /// Creates a new [ConfigBlockingFunctionsTrigger].
  /// [eventType] The identifier for this object. Format specified above.
  /// [functionUri] HTTP URI trigger for the Cloud Function.
  /// [updateTime] (Output)
  ConfigBlockingFunctionsTrigger({
    required this.eventType,
    required this.functionUri,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventType'] = eventType;
    map['functionUri'] = functionUri;
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory ConfigBlockingFunctionsTrigger.fromMap(Map<String, dynamic> map) {
    return ConfigBlockingFunctionsTrigger(
      eventType: map['eventType'] as String,
      functionUri: map['functionUri'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
