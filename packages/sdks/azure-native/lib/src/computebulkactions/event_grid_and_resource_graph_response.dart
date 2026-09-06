// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies eventGridAndResourceGraph related Scheduled Event related configurations.
class EventGridAndResourceGraphResponse {
  /// Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  final pulumi.Input<bool?>? enable;
  /// Specifies the api-version to determine which Scheduled Events configuration schema version will be delivered.
  final pulumi.Input<String?>? scheduledEventsApiVersion;

  /// Creates a new [EventGridAndResourceGraphResponse].
  /// [enable] Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  /// [scheduledEventsApiVersion] Specifies the api-version to determine which Scheduled Events configuration schema version will be delivered.
  const EventGridAndResourceGraphResponse({
    this.enable,
    this.scheduledEventsApiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'scheduledEventsApiVersion': ?scheduledEventsApiVersion,
    };
  }

  factory EventGridAndResourceGraphResponse.fromMap(Map<String, dynamic> map) {
    return EventGridAndResourceGraphResponse(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheduledEventsApiVersion: (() { final guardedValue = map['scheduledEventsApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
