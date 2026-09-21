// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterEncryptionInTransit {
  /// The ARN of the AWS Secrets Manager secret that stores the custom root CA certificate chain used to trust the certificate authority of the Apache Kafka cluster. See [Set up prerequisites for MSK Replicator with self-managed Apache Kafka clusters](https://docs.aws.amazon.com/msk/latest/developerguide/msk-replicator-external-prereqs.html) for the required secret contents and format.
  final pulumi.Input<String> rootCaCertificate;

  /// Creates a new [ReplicatorKafkaClusterEncryptionInTransit].
  /// [rootCaCertificate] The ARN of the AWS Secrets Manager secret that stores the custom root CA certificate chain used to trust the certificate authority of the Apache Kafka cluster. See [Set up prerequisites for MSK Replicator with self-managed Apache Kafka clusters](https://docs.aws.amazon.com/msk/latest/developerguide/msk-replicator-external-prereqs.html) for the required secret contents and format.
  const ReplicatorKafkaClusterEncryptionInTransit({
    required this.rootCaCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootCaCertificate': rootCaCertificate,
    };
  }

  factory ReplicatorKafkaClusterEncryptionInTransit.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterEncryptionInTransit(
      rootCaCertificate: pulumi.Input.fromValue(map['rootCaCertificate'] as String),
    );
  }
}
