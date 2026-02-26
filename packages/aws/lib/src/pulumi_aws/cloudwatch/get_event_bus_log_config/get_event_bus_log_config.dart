// ignore_for_file: unused_element, unnecessary_cast

class GetEventBusLogConfig {
  /// Whether EventBridge include detailed event information in the records it generates.
  final String includeDetail;

  /// Level of logging detail to include.
  final String level;

  GetEventBusLogConfig({
    required this.includeDetail,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['includeDetail'] = includeDetail;
    map['level'] = level;
    return map;
  }

  factory GetEventBusLogConfig.fromMap(Map<String, dynamic> map) {
    return GetEventBusLogConfig(
      includeDetail: map['includeDetail'] as String,
      level: map['level'] as String,
    );
  }
}
