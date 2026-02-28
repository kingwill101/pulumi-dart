// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointRedshiftSetting {
  final String bucketFolder;
  final String bucketName;
  final String encryptionMode;
  final String serverSideEncryptionKmsKeyId;
  final String serviceAccessRoleArn;

  /// Creates a new [GetEndpointRedshiftSetting].
  /// [bucketFolder] Required.
  /// [bucketName] Required.
  /// [encryptionMode] Required.
  /// [serverSideEncryptionKmsKeyId] Required.
  /// [serviceAccessRoleArn] Required.
  GetEndpointRedshiftSetting({
    required this.bucketFolder,
    required this.bucketName,
    required this.encryptionMode,
    required this.serverSideEncryptionKmsKeyId,
    required this.serviceAccessRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketFolder'] = bucketFolder;
    map['bucketName'] = bucketName;
    map['encryptionMode'] = encryptionMode;
    map['serverSideEncryptionKmsKeyId'] = serverSideEncryptionKmsKeyId;
    map['serviceAccessRoleArn'] = serviceAccessRoleArn;
    return map;
  }

  factory GetEndpointRedshiftSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointRedshiftSetting(
      bucketFolder: map['bucketFolder'] as String,
      bucketName: map['bucketName'] as String,
      encryptionMode: map['encryptionMode'] as String,
      serverSideEncryptionKmsKeyId:
          map['serverSideEncryptionKmsKeyId'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
    );
  }
}
