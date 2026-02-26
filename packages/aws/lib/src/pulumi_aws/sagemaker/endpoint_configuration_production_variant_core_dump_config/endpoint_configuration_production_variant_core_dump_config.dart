// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationProductionVariantCoreDumpConfig {
  /// S3 bucket to send the core dump to.
  final String destinationS3Uri;

  /// KMS key that SageMaker AI uses to encrypt the core dump data at rest using S3 server-side encryption.
  final String? kmsKeyId;

  EndpointConfigurationProductionVariantCoreDumpConfig({
    required this.destinationS3Uri,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationS3Uri'] = destinationS3Uri;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    return map;
  }

  factory EndpointConfigurationProductionVariantCoreDumpConfig.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationProductionVariantCoreDumpConfig(
      destinationS3Uri: map['destinationS3Uri'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}
