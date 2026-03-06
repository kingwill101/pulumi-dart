// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies eventGridAndResourceGraph related Scheduled Event related configurations.
class EventGridAndResourceGraphResponse {
  /// Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  final pulumi.Input<bool>? enable;

  /// Creates a new [EventGridAndResourceGraphResponse].
  /// [enable] Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  const EventGridAndResourceGraphResponse({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory EventGridAndResourceGraphResponse.fromMap(Map<String, dynamic> map) {
    return EventGridAndResourceGraphResponse(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

