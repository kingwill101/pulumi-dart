// ignore_for_file: unused_element, unnecessary_cast


class EventSourceV2SourceRabbitMqParameters {
  /// The ID of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final String? instanceId;
  /// The name of the Queue of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final String? queueName;
  /// The region of the RabbitMQ instance.
  final String? regionId;
  /// The name of the Vhost of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final String? virtualHostName;

  /// Creates a new [EventSourceV2SourceRabbitMqParameters].
  /// [instanceId] The ID of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  /// [queueName] The name of the Queue of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  /// [regionId] The region of the RabbitMQ instance.
  /// [virtualHostName] The name of the Vhost of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  EventSourceV2SourceRabbitMqParameters({
    this.instanceId,
    this.queueName,
    this.regionId,
    this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'queueName': ?queueName,
      'regionId': ?regionId,
      'virtualHostName': ?virtualHostName,
    };
  }

  factory EventSourceV2SourceRabbitMqParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceRabbitMqParameters(
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      queueName: map['queueName'] == null ? null : map['queueName'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
      virtualHostName: map['virtualHostName'] == null ? null : map['virtualHostName'] as String,
    );
  }
}

