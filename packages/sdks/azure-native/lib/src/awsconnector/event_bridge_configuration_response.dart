// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EventBridgeConfiguration
class EventBridgeConfigurationResponse {
  /// Enables delivery of events to Amazon EventBridge.
  final bool? eventBridgeEnabled;

  /// Creates a new [EventBridgeConfigurationResponse].
  /// [eventBridgeEnabled] Enables delivery of events to Amazon EventBridge.
  EventBridgeConfigurationResponse({
    this.eventBridgeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBridgeEnabled': ?eventBridgeEnabled,
    };
  }

  factory EventBridgeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EventBridgeConfigurationResponse(
      eventBridgeEnabled: map['eventBridgeEnabled'] == null ? null : map['eventBridgeEnabled'] as bool,
    );
  }
}

