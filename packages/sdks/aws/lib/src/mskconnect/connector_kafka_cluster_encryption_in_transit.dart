// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorKafkaClusterEncryptionInTransit {
  /// The type of encryption in transit to the Apache Kafka cluster. Valid values: `PLAINTEXT`, `TLS`. The default values is `PLAINTEXT`.
  final pulumi.Input<String>? encryptionType;

  /// Creates a new [ConnectorKafkaClusterEncryptionInTransit].
  /// [encryptionType] The type of encryption in transit to the Apache Kafka cluster. Valid values: `PLAINTEXT`, `TLS`. The default values is `PLAINTEXT`.
  const ConnectorKafkaClusterEncryptionInTransit({
    this.encryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': ?encryptionType,
    };
  }

  factory ConnectorKafkaClusterEncryptionInTransit.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaClusterEncryptionInTransit(
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
