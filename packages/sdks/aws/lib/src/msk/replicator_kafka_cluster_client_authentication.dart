// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_kafka_cluster_client_authentication_mtls.dart';
import 'replicator_kafka_cluster_client_authentication_sasl_scram.dart';

class ReplicatorKafkaClusterClientAuthentication {
  /// Details of the mTLS client authentication used by the Kafka cluster. Detailed below.
  final pulumi.Input<ReplicatorKafkaClusterClientAuthenticationMtls?>? mtls;
  /// Details of the SASL/SCRAM client authentication used by the Kafka cluster. Detailed below.
  final pulumi.Input<ReplicatorKafkaClusterClientAuthenticationSaslScram?>? saslScram;

  /// Creates a new [ReplicatorKafkaClusterClientAuthentication].
  /// [mtls] Details of the mTLS client authentication used by the Kafka cluster. Detailed below.
  /// [saslScram] Details of the SASL/SCRAM client authentication used by the Kafka cluster. Detailed below.
  const ReplicatorKafkaClusterClientAuthentication({
    this.mtls,
    this.saslScram,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterClientAuthenticationMtls, Map<String, dynamic>>(mtls, (value) => value.toMap()),
      'saslScram': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterClientAuthenticationSaslScram, Map<String, dynamic>>(saslScram, (value) => value.toMap()),
    };
  }

  factory ReplicatorKafkaClusterClientAuthentication.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterClientAuthentication(
      mtls: (() { final guardedValue = map['mtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterClientAuthenticationMtls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saslScram: (() { final guardedValue = map['saslScram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterClientAuthenticationSaslScram.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
