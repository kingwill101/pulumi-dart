// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointRedshiftSettings {
  /// Custom S3 Bucket Object prefix for intermediate storage.
  final pulumi.Input<String>? bucketFolder;
  /// Custom S3 Bucket name for intermediate storage.
  final pulumi.Input<String>? bucketName;
  /// The server-side encryption mode that you want to encrypt your intermediate .csv object files copied to S3. Defaults to `SSE_S3`. Valid values are `SSE_S3` and `SSE_KMS`.
  final pulumi.Input<String>? encryptionMode;
  /// ARN or Id of KMS Key to use when `encryption_mode` is `SSE_KMS`.
  final pulumi.Input<String>? serverSideEncryptionKmsKeyId;
  /// Amazon Resource Name (ARN) of the IAM Role with permissions to read from or write to the S3 Bucket for intermediate storage.
  final pulumi.Input<String>? serviceAccessRoleArn;

  /// Creates a new [EndpointRedshiftSettings].
  /// [bucketFolder] Custom S3 Bucket Object prefix for intermediate storage.
  /// [bucketName] Custom S3 Bucket name for intermediate storage.
  /// [encryptionMode] The server-side encryption mode that you want to encrypt your intermediate .csv object files copied to S3. Defaults to `SSE_S3`. Valid values are `SSE_S3` and `SSE_KMS`.
  /// [serverSideEncryptionKmsKeyId] ARN or Id of KMS Key to use when `encryption_mode` is `SSE_KMS`.
  /// [serviceAccessRoleArn] Amazon Resource Name (ARN) of the IAM Role with permissions to read from or write to the S3 Bucket for intermediate storage.
  EndpointRedshiftSettings({
    this.bucketFolder,
    this.bucketName,
    this.encryptionMode,
    this.serverSideEncryptionKmsKeyId,
    this.serviceAccessRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketFolder': ?bucketFolder,
      'bucketName': ?bucketName,
      'encryptionMode': ?encryptionMode,
      'serverSideEncryptionKmsKeyId': ?serverSideEncryptionKmsKeyId,
      'serviceAccessRoleArn': ?serviceAccessRoleArn,
    };
  }

  factory EndpointRedshiftSettings.fromMap(Map<String, dynamic> map) {
    return EndpointRedshiftSettings(
      bucketFolder: map['bucketFolder'] == null ? null : (map['bucketFolder'] as String).input(),
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      encryptionMode: map['encryptionMode'] == null ? null : (map['encryptionMode'] as String).input(),
      serverSideEncryptionKmsKeyId: map['serverSideEncryptionKmsKeyId'] == null ? null : (map['serverSideEncryptionKmsKeyId'] as String).input(),
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null ? null : (map['serviceAccessRoleArn'] as String).input(),
    );
  }
}

