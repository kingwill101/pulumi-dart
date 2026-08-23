// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EventBridgeConfiguration
class EventBridgeConfiguration {
  /// Enables delivery of events to Amazon EventBridge.
  final pulumi.Input<bool>? eventBridgeEnabled;

  /// Creates a new [EventBridgeConfiguration].
  /// [eventBridgeEnabled] Enables delivery of events to Amazon EventBridge.
  const EventBridgeConfiguration({
    this.eventBridgeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBridgeEnabled': ?eventBridgeEnabled,
    };
  }

  factory EventBridgeConfiguration.fromMap(Map<String, dynamic> map) {
    return EventBridgeConfiguration(
      eventBridgeEnabled: (() { final guardedValue = map['eventBridgeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
