// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceServerSideEncryptionConfiguration {
  /// ARN of the AWS KMS key used to encrypt the resource.
  final String? kmsKeyArn;

  /// Creates a new [AgentDataSourceServerSideEncryptionConfiguration].
  /// [kmsKeyArn] ARN of the AWS KMS key used to encrypt the resource.
  AgentDataSourceServerSideEncryptionConfiguration({
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    return map;
  }

  factory AgentDataSourceServerSideEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceServerSideEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
