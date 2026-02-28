// ignore_for_file: unused_element, unnecessary_cast


class AwsClusterControlPlaneConfigEncryption {
  /// The ARN of the AWS KMS key used to encrypt cluster configuration.
  final String kmsKeyArn;

  /// Creates a new [AwsClusterControlPlaneConfigEncryption].
  /// [kmsKeyArn] The ARN of the AWS KMS key used to encrypt cluster configuration.
  AwsClusterControlPlaneConfigEncryption({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory AwsClusterControlPlaneConfigEncryption.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneConfigEncryption(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}

