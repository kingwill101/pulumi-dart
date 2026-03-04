// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object that describes the topic information.
class TopicResponse {
  /// The topic path for messages published to an MQTT broker.
  final pulumi.Input<String> path;

  /// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  final pulumi.Input<String>? retain;

  /// Creates a new [TopicResponse].
  /// [path] The topic path for messages published to an MQTT broker.
  /// [retain] When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  TopicResponse({required this.path, this.retain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'retain': ?retain};
  }

  factory TopicResponse.fromMap(Map<String, dynamic> map) {
    return TopicResponse(
      path: pulumi.Input.fromValue(map['path'] as String),
      retain: (() {
        final guardedValue = map['retain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
