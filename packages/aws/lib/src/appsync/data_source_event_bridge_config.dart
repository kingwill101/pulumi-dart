// ignore_for_file: unused_element, unnecessary_cast

class DataSourceEventBridgeConfig {
  /// ARN for the EventBridge bus.
  final String eventBusArn;

  /// Creates a new [DataSourceEventBridgeConfig].
  /// [eventBusArn] ARN for the EventBridge bus.
  DataSourceEventBridgeConfig({required this.eventBusArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'eventBusArn': eventBusArn};
  }

  factory DataSourceEventBridgeConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceEventBridgeConfig(
      eventBusArn: map['eventBusArn'] as String,
    );
  }
}
