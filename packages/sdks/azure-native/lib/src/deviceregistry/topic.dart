// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object that describes the topic information.
class Topic {
  /// The topic path for messages published to an MQTT broker.
  final pulumi.Input<String> path;
  /// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  final pulumi.Input<dynamic>? retain;

  /// Creates a new [Topic].
  /// [path] The topic path for messages published to an MQTT broker.
  /// [retain] When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  Topic({
    required this.path,
    pulumi.Input<dynamic>? retain,
  }) : retain = retain ?? pulumi.Input.fromValue('Never');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'retain': ?retain,
    };
  }

  factory Topic.fromMap(Map<String, dynamic> map) {
    return Topic(
      path: pulumi.Input.fromValue(map['path'] as String),
      retain: (() { final guardedValue = map['retain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
