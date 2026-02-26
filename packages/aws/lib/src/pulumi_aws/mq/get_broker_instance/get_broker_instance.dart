// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerInstance {
  /// URL of the ActiveMQ Web Console or the RabbitMQ Management UI depending on <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span>.
  final String consoleUrl;

  /// Broker's wire-level protocol endpoints.
  final List<String> endpoints;

  /// IP Address of the broker.
  final String ipAddress;

  GetBrokerInstance({
    required this.consoleUrl,
    required this.endpoints,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consoleUrl'] = consoleUrl;
    map['endpoints'] = endpoints;
    map['ipAddress'] = ipAddress;
    return map;
  }

  factory GetBrokerInstance.fromMap(Map<String, dynamic> map) {
    return GetBrokerInstance(
      consoleUrl: map['consoleUrl'] as String,
      endpoints: (map['endpoints'] as List).cast<String>(),
      ipAddress: map['ipAddress'] as String,
    );
  }
}
