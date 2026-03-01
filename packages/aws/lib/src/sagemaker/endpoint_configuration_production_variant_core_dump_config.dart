// ignore_for_file: unused_element, unnecessary_cast


class EndpointConfigurationProductionVariantCoreDumpConfig {
  /// S3 bucket to send the core dump to.
  final String destinationS3Uri;
  /// KMS key that SageMaker AI uses to encrypt the core dump data at rest using S3 server-side encryption.
  final String? kmsKeyId;

  /// Creates a new [EndpointConfigurationProductionVariantCoreDumpConfig].
  /// [destinationS3Uri] S3 bucket to send the core dump to.
  /// [kmsKeyId] KMS key that SageMaker AI uses to encrypt the core dump data at rest using S3 server-side encryption.
  EndpointConfigurationProductionVariantCoreDumpConfig({
    required this.destinationS3Uri,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationS3Uri': destinationS3Uri,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory EndpointConfigurationProductionVariantCoreDumpConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationProductionVariantCoreDumpConfig(
      destinationS3Uri: map['destinationS3Uri'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}

