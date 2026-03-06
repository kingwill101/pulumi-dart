// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceEventBridgeConfig {
  /// ARN for the EventBridge bus.
  final pulumi.Input<String> eventBusArn;

  /// Creates a new [DataSourceEventBridgeConfig].
  /// [eventBusArn] ARN for the EventBridge bus.
  const DataSourceEventBridgeConfig({
    required this.eventBusArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusArn': eventBusArn,
    };
  }

  factory DataSourceEventBridgeConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceEventBridgeConfig(
      eventBusArn: pulumi.Input.fromValue(map['eventBusArn'] as String),
    );
  }
}

