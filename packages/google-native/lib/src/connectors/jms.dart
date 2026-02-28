// ignore_for_file: unused_element, unnecessary_cast

import 'jmstype.dart';

/// JMS message denotes the source of the event
class JMS {
  /// Optional. Name of the JMS source. i.e. queueName or topicName
  final String? name;
  /// Optional. Type of the JMS Source. i.e. Queue or Topic
  final JMSType? type;

  /// Creates a new [JMS].
  /// [name] Optional. Name of the JMS source. i.e. queueName or topicName
  /// [type] Optional. Type of the JMS Source. i.e. Queue or Topic
  JMS({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory JMS.fromMap(Map<String, dynamic> map) {
    return JMS(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : JMSType.fromValue(map['type'] as String),
    );
  }
}

