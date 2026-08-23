// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerInstance {
  /// URL of the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) or the [RabbitMQ Management UI](https://www.rabbitmq.com/management.html#external-monitoring) depending on `engineType`.
  final pulumi.Input<String>? consoleUrl;
  /// `amqps://broker-id.mq.us-west-2.amazonaws.com:5671`
  final pulumi.Input<List<String>>? endpoints;
  /// IP Address of the broker.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [BrokerInstance].
  /// [consoleUrl] URL of the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) or the [RabbitMQ Management UI](https://www.rabbitmq.com/management.html#external-monitoring) depending on `engineType`.
  /// [endpoints] `amqps://broker-id.mq.us-west-2.amazonaws.com:5671`
  /// [ipAddress] IP Address of the broker.
  const BrokerInstance({
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
