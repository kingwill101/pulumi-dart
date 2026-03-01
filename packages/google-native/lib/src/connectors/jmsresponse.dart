// ignore_for_file: unused_element, unnecessary_cast

/// JMS message denotes the source of the event
class JMSResponse {
  /// Optional. Name of the JMS source. i.e. queueName or topicName
  final String name;

  /// Optional. Type of the JMS Source. i.e. Queue or Topic
  final String type;

  /// Creates a new [JMSResponse].
  /// [name] Optional. Name of the JMS source. i.e. queueName or topicName
  /// [type] Optional. Type of the JMS Source. i.e. Queue or Topic
  JMSResponse({required this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory JMSResponse.fromMap(Map<String, dynamic> map) {
    return JMSResponse(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
