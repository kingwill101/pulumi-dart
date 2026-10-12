// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterClientAuthenticationSaslScram {
  /// The SASL/SCRAM mechanism used for authentication. Valid values are `SHA256` and `SHA512`.
  final pulumi.Input<String> mechanism;
  /// The ARN of the AWS Secrets Manager secret that stores the credentials used for SASL/SCRAM authentication. See [Set up prerequisites for MSK Replicator with self-managed Apache Kafka clusters](https://docs.aws.amazon.com/msk/latest/developerguide/msk-replicator-external-prereqs.html) for the required secret contents and format.
  final pulumi.Input<String> secretArn;

  /// Creates a new [ReplicatorKafkaClusterClientAuthenticationSaslScram].
  /// [mechanism] The SASL/SCRAM mechanism used for authentication. Valid values are `SHA256` and `SHA512`.
  /// [secretArn] The ARN of the AWS Secrets Manager secret that stores the credentials used for SASL/SCRAM authentication. See [Set up prerequisites for MSK Replicator with self-managed Apache Kafka clusters](https://docs.aws.amazon.com/msk/latest/developerguide/msk-replicator-external-prereqs.html) for the required secret contents and format.
  const ReplicatorKafkaClusterClientAuthenticationSaslScram({
    required this.mechanism,
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mechanism': mechanism,
      'secretArn': secretArn,
    };
  }

  factory ReplicatorKafkaClusterClientAuthenticationSaslScram.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterClientAuthenticationSaslScram(
      mechanism: pulumi.Input.fromValue(map['mechanism'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
