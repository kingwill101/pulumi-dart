// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolConfigConfigEncryption {
  /// The ARN of the AWS KMS key used to encrypt node pool configuration.
  final String kmsKeyArn;

  /// Creates a new [AwsNodePoolConfigConfigEncryption].
  /// [kmsKeyArn] The ARN of the AWS KMS key used to encrypt node pool configuration.
  AwsNodePoolConfigConfigEncryption({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    return map;
  }

  factory AwsNodePoolConfigConfigEncryption.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigConfigEncryption(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
