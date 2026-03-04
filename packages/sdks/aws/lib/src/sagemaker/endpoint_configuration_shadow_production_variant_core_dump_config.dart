// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationShadowProductionVariantCoreDumpConfig {
  /// S3 bucket to send the core dump to.
  final pulumi.Input<String> destinationS3Uri;

  /// KMS key that SageMaker AI uses to encrypt the core dump data at rest using S3 server-side encryption.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [EndpointConfigurationShadowProductionVariantCoreDumpConfig].
  /// [destinationS3Uri] S3 bucket to send the core dump to.
  /// [kmsKeyId] KMS key that SageMaker AI uses to encrypt the core dump data at rest using S3 server-side encryption.
  EndpointConfigurationShadowProductionVariantCoreDumpConfig({
    required this.destinationS3Uri,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationS3Uri': destinationS3Uri,
      'kmsKeyId': kmsKeyId,
    };
  }

  factory EndpointConfigurationShadowProductionVariantCoreDumpConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointConfigurationShadowProductionVariantCoreDumpConfig(
      destinationS3Uri: pulumi.Input.fromValue(
        map['destinationS3Uri'] as String,
      ),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}
