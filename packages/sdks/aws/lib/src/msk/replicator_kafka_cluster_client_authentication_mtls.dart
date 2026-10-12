// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterClientAuthenticationMtls {
  /// The ARN of the AWS Secrets Manager secret that stores the private key and certificate used for mTLS authentication. See [Set up prerequisites for MSK Replicator with self-managed Apache Kafka clusters](https://docs.aws.amazon.com/msk/latest/developerguide/msk-replicator-external-prereqs.html) for the required secret contents and format.
  final pulumi.Input<String> secretArn;

  /// Creates a new [ReplicatorKafkaClusterClientAuthenticationMtls].
  /// [secretArn] The ARN of the AWS Secrets Manager secret that stores the private key and certificate used for mTLS authentication. See [Set up prerequisites for MSK Replicator with self-managed Apache Kafka clusters](https://docs.aws.amazon.com/msk/latest/developerguide/msk-replicator-external-prereqs.html) for the required secret contents and format.
  const ReplicatorKafkaClusterClientAuthenticationMtls({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
    };
  }

  factory ReplicatorKafkaClusterClientAuthenticationMtls.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterClientAuthenticationMtls(
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
