// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetEventDestinationEventDestinationEventBridgeDestination {
  /// The Amazon Resource Name (ARN) of the Amazon EventBridge bus to publish email events to. Only the default bus is supported.
  final String eventBusArn;

  ConfigurationSetEventDestinationEventDestinationEventBridgeDestination({
    required this.eventBusArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventBusArn'] = eventBusArn;
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationEventBridgeDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationEventBridgeDestination(
      eventBusArn: map['eventBusArn'] as String,
    );
  }
}
