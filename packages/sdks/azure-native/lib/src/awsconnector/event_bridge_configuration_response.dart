// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EventBridgeConfiguration
class EventBridgeConfigurationResponse {
  /// Enables delivery of events to Amazon EventBridge.
  final pulumi.Input<bool?>? eventBridgeEnabled;

  /// Creates a new [EventBridgeConfigurationResponse].
  /// [eventBridgeEnabled] Enables delivery of events to Amazon EventBridge.
  EventBridgeConfigurationResponse({
    pulumi.Input<bool?>? eventBridgeEnabled,
  }) : eventBridgeEnabled = eventBridgeEnabled ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBridgeEnabled': ?eventBridgeEnabled,
    };
  }

  factory EventBridgeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EventBridgeConfigurationResponse(
      eventBridgeEnabled: (() { final guardedValue = map['eventBridgeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
