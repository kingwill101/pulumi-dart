// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerInstance {
  /// URL of the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) or the [RabbitMQ Management UI](https://www.rabbitmq.com/management.html#external-monitoring) depending on `engine_type`.
  final pulumi.Input<String>? consoleUrl;
  /// Broker's wire-level protocol endpoints in the following order & format referenceable e.g., as `instances.0.endpoints.0` (SSL):
  /// * For `ActiveMQ`:
  /// * `ssl://broker-id.mq.us-west-2.amazonaws.com:61617`
  /// * `amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671`
  /// * `stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614`
  /// * `mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883`
  /// * `wss://broker-id.mq.us-west-2.amazonaws.com:61619`
  /// * For `RabbitMQ`:
  /// * `amqps://broker-id.mq.us-west-2.amazonaws.com:5671`
  final pulumi.Input<List<String>>? endpoints;
  /// IP Address of the broker.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [BrokerInstance].
  /// [consoleUrl] URL of the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) or the [RabbitMQ Management UI](https://www.rabbitmq.com/management.html#external-monitoring) depending on `engine_type`.
  /// [endpoints] Broker's wire-level protocol endpoints in the following order & format referenceable e.g., as `instances.0.endpoints.0` (SSL):
  /// [ipAddress] IP Address of the broker.
  BrokerInstance({
    this.consoleUrl,
    this.endpoints,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleUrl': ?consoleUrl,
      'endpoints': ?endpoints,
      'ipAddress': ?ipAddress,
    };
  }

  factory BrokerInstance.fromMap(Map<String, dynamic> map) {
    return BrokerInstance(
      consoleUrl: (() { final guardedValue = map['consoleUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

