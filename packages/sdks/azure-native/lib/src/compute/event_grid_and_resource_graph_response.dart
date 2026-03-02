// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies eventGridAndResourceGraph related Scheduled Event related configurations.
class EventGridAndResourceGraphResponse {
  /// Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  final pulumi.Input<bool>? enable;

  /// Creates a new [EventGridAndResourceGraphResponse].
  /// [enable] Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  EventGridAndResourceGraphResponse({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory EventGridAndResourceGraphResponse.fromMap(Map<String, dynamic> map) {
    return EventGridAndResourceGraphResponse(
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
    );
  }
}

