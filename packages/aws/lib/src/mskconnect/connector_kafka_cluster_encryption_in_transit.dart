// ignore_for_file: unused_element, unnecessary_cast

class ConnectorKafkaClusterEncryptionInTransit {
  /// The type of encryption in transit to the Apache Kafka cluster. Valid values: `PLAINTEXT`, `TLS`. The default values is `PLAINTEXT`.
  final String? encryptionType;

  /// Creates a new [ConnectorKafkaClusterEncryptionInTransit].
  /// [encryptionType] The type of encryption in transit to the Apache Kafka cluster. Valid values: `PLAINTEXT`, `TLS`. The default values is `PLAINTEXT`.
  ConnectorKafkaClusterEncryptionInTransit({
    this.encryptionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionTypeValue = encryptionType;
    if (encryptionTypeValue != null) {
      map['encryptionType'] = encryptionTypeValue;
    }
    return map;
  }

  factory ConnectorKafkaClusterEncryptionInTransit.fromMap(
      Map<String, dynamic> map) {
    return ConnectorKafkaClusterEncryptionInTransit(
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
    );
  }
}
