// ignore_for_file: unused_element, unnecessary_cast

class BrokerInstance {
  /// URL of the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) or the [RabbitMQ Management UI](https://www.rabbitmq.com/management.html#external-monitoring) depending on `engine_type`.
  final String? consoleUrl;

  /// Broker's wire-level protocol endpoints in the following order & format referenceable e.g., as `instances.0.endpoints.0` (SSL):
  /// * For `ActiveMQ`:
  /// * `ssl://broker-id.mq.us-west-2.amazonaws.com:61617`
  /// * `amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671`
  /// * `stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614`
  /// * `mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883`
  /// * `wss://broker-id.mq.us-west-2.amazonaws.com:61619`
  /// * For `RabbitMQ`:
  /// * `amqps://broker-id.mq.us-west-2.amazonaws.com:5671`
  final List<String>? endpoints;

  /// IP Address of the broker.
  final String? ipAddress;

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
    final map = <String, dynamic>{};
    final consoleUrlValue = consoleUrl;
    if (consoleUrlValue != null) {
      map['consoleUrl'] = consoleUrlValue;
    }
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] = endpointsValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    return map;
  }

  factory BrokerInstance.fromMap(Map<String, dynamic> map) {
    return BrokerInstance(
      consoleUrl:
          map['consoleUrl'] == null ? null : map['consoleUrl'] as String,
      endpoints: map['endpoints'] == null
          ? null
          : (map['endpoints'] as List).cast<String>(),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}
