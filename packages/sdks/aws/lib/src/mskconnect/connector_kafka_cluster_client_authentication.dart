// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorKafkaClusterClientAuthentication {
  /// The type of client authentication used to connect to the Apache Kafka cluster. Valid values: `IAM`, `NONE`. A value of `NONE` means that no client authentication is used. The default value is `NONE`.
  final pulumi.Input<String>? authenticationType;

  /// Creates a new [ConnectorKafkaClusterClientAuthentication].
  /// [authenticationType] The type of client authentication used to connect to the Apache Kafka cluster. Valid values: `IAM`, `NONE`. A value of `NONE` means that no client authentication is used. The default value is `NONE`.
  ConnectorKafkaClusterClientAuthentication({
    this.authenticationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
    };
  }

  factory ConnectorKafkaClusterClientAuthentication.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaClusterClientAuthentication(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
    );
  }
}

