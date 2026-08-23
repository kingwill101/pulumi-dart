// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies eventGridAndResourceGraph related Scheduled Event related configurations.
class EventGridAndResourceGraph {
  /// Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  final pulumi.Input<bool>? enable;

  /// Creates a new [EventGridAndResourceGraph].
  /// [enable] Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  const EventGridAndResourceGraph({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory EventGridAndResourceGraph.fromMap(Map<String, dynamic> map) {
    return EventGridAndResourceGraph(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
