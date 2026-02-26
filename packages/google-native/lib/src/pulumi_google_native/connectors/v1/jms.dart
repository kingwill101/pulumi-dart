// ignore_for_file: unused_element, unnecessary_cast

import 'jmstype.dart';

/// JMS message denotes the source of the event
class JMS {
  /// Optional. Name of the JMS source. i.e. queueName or topicName
  final String? name;

  /// Optional. Type of the JMS Source. i.e. Queue or Topic
  final JMSType? type;

  JMS({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory JMS.fromMap(Map<String, dynamic> map) {
    return JMS(
      name: map['name'] == null ? null : map['name'] as String,
      type:
          map['type'] == null ? null : JMSType.fromValue(map['type'] as String),
    );
  }
}
