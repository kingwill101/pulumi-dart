// ignore_for_file: unused_element, unnecessary_cast


class DeviceFleetOutputConfig {
  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt data on the storage volume after compilation job. If you don't provide a KMS key ID, Amazon SageMaker AI uses the default KMS key for Amazon S3 for your role's account.
  final String? kmsKeyId;
  /// The Amazon Simple Storage (S3) bucker URI.
  final String s3OutputLocation;

  /// Creates a new [DeviceFleetOutputConfig].
  /// [kmsKeyId] The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt data on the storage volume after compilation job. If you don't provide a KMS key ID, Amazon SageMaker AI uses the default KMS key for Amazon S3 for your role's account.
  /// [s3OutputLocation] The Amazon Simple Storage (S3) bucker URI.
  DeviceFleetOutputConfig({
    this.kmsKeyId,
    required this.s3OutputLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      's3OutputLocation': s3OutputLocation,
    };
  }

  factory DeviceFleetOutputConfig.fromMap(Map<String, dynamic> map) {
    return DeviceFleetOutputConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      s3OutputLocation: map['s3OutputLocation'] as String,
    );
  }
}

