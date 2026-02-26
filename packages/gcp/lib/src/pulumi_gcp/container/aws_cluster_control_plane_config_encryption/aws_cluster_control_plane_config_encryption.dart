// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterControlPlaneConfigEncryption {
  /// The ARN of the AWS KMS key used to encrypt cluster configuration.
  final String kmsKeyArn;

  AwsClusterControlPlaneConfigEncryption({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    return map;
  }

  factory AwsClusterControlPlaneConfigEncryption.fromMap(
      Map<String, dynamic> map) {
    return AwsClusterControlPlaneConfigEncryption(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
