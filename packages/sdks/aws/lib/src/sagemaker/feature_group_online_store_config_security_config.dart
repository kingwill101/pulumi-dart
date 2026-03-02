// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupOnlineStoreConfigSecurityConfig {
  /// The ID of the AWS Key Management Service (AWS KMS) key that SageMaker AI Feature Store uses to encrypt the Amazon S3 objects at rest using Amazon S3 server-side encryption.
  final pulumi.Input<String>? kmsKeyId;

  /// Creates a new [FeatureGroupOnlineStoreConfigSecurityConfig].
  /// [kmsKeyId] The ID of the AWS Key Management Service (AWS KMS) key that SageMaker AI Feature Store uses to encrypt the Amazon S3 objects at rest using Amazon S3 server-side encryption.
  FeatureGroupOnlineStoreConfigSecurityConfig({
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory FeatureGroupOnlineStoreConfigSecurityConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupOnlineStoreConfigSecurityConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
    );
  }
}

