// ignore_for_file: unused_element, unnecessary_cast


class ConnectionConnectorVersionInfraConfig {
  /// (Output)
  /// Max QPS supported by the connector version before throttling of requests.
  final String? ratelimitThreshold;

  /// Creates a new [ConnectionConnectorVersionInfraConfig].
  /// [ratelimitThreshold] (Output)
  ConnectionConnectorVersionInfraConfig({
    this.ratelimitThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ratelimitThreshold': ?ratelimitThreshold,
    };
  }

  factory ConnectionConnectorVersionInfraConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionConnectorVersionInfraConfig(
      ratelimitThreshold: map['ratelimitThreshold'] == null ? null : map['ratelimitThreshold'] as String,
    );
  }
}

