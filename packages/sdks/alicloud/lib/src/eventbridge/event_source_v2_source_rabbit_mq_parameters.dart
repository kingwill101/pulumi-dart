// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceRabbitMqParameters {
  /// The ID of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final pulumi.Input<String>? instanceId;

  /// The name of the Queue of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final pulumi.Input<String>? queueName;

  /// The region of the RabbitMQ instance.
  final pulumi.Input<String>? regionId;

  /// The name of the Vhost of the RabbitMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final pulumi.Input<String>? virtualHostName;

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

  factory EventSourceV2SourceRabbitMqParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSourceV2SourceRabbitMqParameters(
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueName: (() {
        final guardedValue = map['queueName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualHostName: (() {
        final guardedValue = map['virtualHostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
