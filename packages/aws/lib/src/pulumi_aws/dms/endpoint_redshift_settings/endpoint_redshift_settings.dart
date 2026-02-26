// ignore_for_file: unused_element, unnecessary_cast

class EndpointRedshiftSettings {
  /// Custom S3 Bucket Object prefix for intermediate storage.
  final String? bucketFolder;

  /// Custom S3 Bucket name for intermediate storage.
  final String? bucketName;

  /// The server-side encryption mode that you want to encrypt your intermediate .csv object files copied to S3. Defaults to `SSE_S3`. Valid values are `SSE_S3` and `SSE_KMS`.
  final String? encryptionMode;

  /// ARN or Id of KMS Key to use when <span pulumi-lang-nodejs="`encryptionMode`" pulumi-lang-dotnet="`EncryptionMode`" pulumi-lang-go="`encryptionMode`" pulumi-lang-python="`encryption_mode`" pulumi-lang-yaml="`encryptionMode`" pulumi-lang-java="`encryptionMode`">`encryption_mode`</span> is `SSE_KMS`.
  final String? serverSideEncryptionKmsKeyId;

  /// Amazon Resource Name (ARN) of the IAM Role with permissions to read from or write to the S3 Bucket for intermediate storage.
  final String? serviceAccessRoleArn;

  EndpointRedshiftSettings({
    this.bucketFolder,
    this.bucketName,
    this.encryptionMode,
    this.serverSideEncryptionKmsKeyId,
    this.serviceAccessRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketFolderValue = bucketFolder;
    if (bucketFolderValue != null) {
      map['bucketFolder'] = bucketFolderValue;
    }
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final encryptionModeValue = encryptionMode;
    if (encryptionModeValue != null) {
      map['encryptionMode'] = encryptionModeValue;
    }
    final serverSideEncryptionKmsKeyIdValue = serverSideEncryptionKmsKeyId;
    if (serverSideEncryptionKmsKeyIdValue != null) {
      map['serverSideEncryptionKmsKeyId'] = serverSideEncryptionKmsKeyIdValue;
    }
    final serviceAccessRoleArnValue = serviceAccessRoleArn;
    if (serviceAccessRoleArnValue != null) {
      map['serviceAccessRoleArn'] = serviceAccessRoleArnValue;
    }
    return map;
  }

  factory EndpointRedshiftSettings.fromMap(Map<String, dynamic> map) {
    return EndpointRedshiftSettings(
      bucketFolder:
          map['bucketFolder'] == null ? null : map['bucketFolder'] as String,
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      encryptionMode: map['encryptionMode'] == null
          ? null
          : map['encryptionMode'] as String,
      serverSideEncryptionKmsKeyId: map['serverSideEncryptionKmsKeyId'] == null
          ? null
          : map['serverSideEncryptionKmsKeyId'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null
          ? null
          : map['serviceAccessRoleArn'] as String,
    );
  }
}
