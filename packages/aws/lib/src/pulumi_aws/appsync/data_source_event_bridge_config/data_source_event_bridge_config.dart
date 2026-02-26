// ignore_for_file: unused_element, unnecessary_cast

class DataSourceEventBridgeConfig {
  /// ARN for the EventBridge bus.
  final String eventBusArn;

  DataSourceEventBridgeConfig({
    required this.eventBusArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventBusArn'] = eventBusArn;
    return map;
  }

  factory DataSourceEventBridgeConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceEventBridgeConfig(
      eventBusArn: map['eventBusArn'] as String,
    );
  }
}
