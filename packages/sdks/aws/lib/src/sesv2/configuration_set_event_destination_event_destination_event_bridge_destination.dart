// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetEventDestinationEventDestinationEventBridgeDestination {
  /// The Amazon Resource Name (ARN) of the Amazon EventBridge bus to publish email events to. Only the default bus is supported.
  final pulumi.Input<String> eventBusArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationEventBridgeDestination].
  /// [eventBusArn] The Amazon Resource Name (ARN) of the Amazon EventBridge bus to publish email events to. Only the default bus is supported.
  ConfigurationSetEventDestinationEventDestinationEventBridgeDestination({
    required this.eventBusArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'eventBusArn': eventBusArn};
  }

  factory ConfigurationSetEventDestinationEventDestinationEventBridgeDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigurationSetEventDestinationEventDestinationEventBridgeDestination(
      eventBusArn: pulumi.Input.fromValue(map['eventBusArn'] as String),
    );
  }
}
