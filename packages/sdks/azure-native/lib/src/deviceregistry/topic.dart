// ignore_for_file: unused_element, unnecessary_cast


/// Object that describes the topic information.
class Topic {
  /// The topic path for messages published to an MQTT broker.
  final String path;
  /// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  final String? retain;

  /// Creates a new [Topic].
  /// [path] The topic path for messages published to an MQTT broker.
  /// [retain] When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  Topic({
    required this.path,
    this.retain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'retain': ?retain,
    };
  }

  factory Topic.fromMap(Map<String, dynamic> map) {
    return Topic(
      path: map['path'] as String,
      retain: map['retain'] == null ? null : map['retain'] as String,
    );
  }
}

